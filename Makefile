################################################################
# Swaggy C: A Makefile for generating API clients using OpenAPI Generator
# https://github.com/cliffano/swaggy-c
################################################################

# The version of Swaggy C
SWAGGY_C_VERSION = 1.0.0-pre.0

# The version of OpenAPI Generator (https://openapi-generator.tech/) used for generating the API clients
OPENAPI_GENERATOR_VERSION = 6.0.1

# LANGS_ALL lists the languages supported by the given OPENAPI_GENERATOR_VERSION
LANGS_ALL = ada ada-server android apache2 apex asciidoc aspnetcore avro-schema bash crystal c clojure cwiki cpp-qt-client cpp-qt-qhttpengine-server cpp-pistache-server cpp-restbed-server cpp-restsdk cpp-tiny cpp-tizen cpp-ue4 csharp csharp-netcore csharp-dotnet2 csharp-netcore-functions dart dart-dio eiffel elixir elm erlang-client erlang-proper erlang-server fsharp-functions fsharp-giraffe-server go go-echo-server go-server go-gin-server graphql-schema graphql-nodejs-express-server groovy kotlin kotlin-server kotlin-spring kotlin-vertx ktorm-schema haskell-http-client haskell haskell-yesod jaxrs-cxf-client java java-inflector java-micronaut-client java-micronaut-server java-msf4j java-pkmst java-play-framework java-undertow-server java-vertx java-vertx-web java-camel jaxrs-cxf jaxrs-cxf-extended jaxrs-cxf-cdi jaxrs-jersey jaxrs-resteasy jaxrs-resteasy-eap jaxrs-spec javascript javascript-apollo javascript-flowtyped javascript-closure-angular jmeter k6 lua markdown mysql-schema nim nodejs-express-server objc ocaml openapi openapi-yaml plantuml perl php php-laravel php-lumen php-slim-deprecated php-slim4 php-symfony php-mezzio-ph php-dt powershell protobuf-schema python python-legacy python-fastapi python-experimental python-flask python-aiohttp python-blueplanet r ruby ruby-on-rails ruby-sinatra rust rust-server scalatra scala-akka scala-akka-http-server scala-finch scala-httpclient-deprecated scala-gatling scala-lagom-server scala-play-server scala-sttp scalaz spring dynamic-html html html2 swift5 typescript typescript-angular typescript-aurelia typescript-axios typescript-fetch typescript-inversify typescript-jquery typescript-nestjs typescript-node typescript-redux-query typescript-rxjs wsdl-schema

# LANGS_PRIMARY lists the languages which will be built and published to public package registries
LANGS_PRIMARY = javascript python ruby

# The location where OpenAPI specification file will be placed within the project
LOCAL_SPEC_PATH = stage/specification.yml

################################################################
# User configuration variables
# These variables should be stored in swaggy-c.yml config file,
# and they will be parsed using yq https://github.com/mikefarah/yq
# Example:
# ---
# app_version:1.2.3
# spec_uri: specification/someapp.yml
# gen_base_dir:
#   github_actions: /home/runner/work/someapp/someapp
#   local: /home/someuser/someapp

# APP_VERSION is version of the application using Swaggy C
APP_VERSION ?= $(yq .app_version swaggy-c.yml)

# SPEC_URI is the location where the OpenAPI specification is located, for example:
# - local file path: spec/some-app.yaml
# - remote URL: https://some-app.com/some-app.yaml
SPEC_URI=$(yq .spec_uri swaggy-c.yml)

# GEN_BASE_DIR is the absolute path where the project base directory is located, for example:
# - MacOS user workspace directory: /Users/some-user/some-path/some-app
# - GitHub Actions directory: /home/runner/work/some-app/some-app
ifdef GITHUB_ACTIONS
GEN_BASE_DIR=$(yq .gen_base_dir.github_actions swaggy-c.yml)
else
GEN_BASE_DIR=$(yq .gen_base_dir.local swaggy-c.yml)
endif

################################################################
# Base targets

# CI target to be executed by CI/CD tool
ci: clean deps init-spec generate build-javascript build-python build-ruby test-javascript test-python test-ruby doc

# Ensure stage directory exists
stage:
	mkdir -p stage

# Remove all generated API clients code
clean:
	rm -rf clients/*/generated

# Retrieve the OpenAPI Generator Docker image and npm modules
deps:
	docker pull openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION)
	npm install -g bootprint bootprint-openapi gh-pages mocha

# Initialise OpenAPI specification from either a local file path or a remote URL
# This target requires SPEC_URI parameter to be supplied by user
init-spec: stage
	if test $(findstring https, $(SPEC_URI)); then \
	  curl $(SPEC_URI) --output $(LOCAL_SPEC_PATH); \
	else \
	  cp $(SPEC_URI) $(LOCAL_SPEC_PATH); \
	fi

# Initiailise empty configuration file for all languages
init-langs-config:
	for lang in ${LANGS_ALL} ; do \
	  mkdir -p clients/$$lang/; \
	  cat "{}" > clients/$$lang/conf.json; \
	done

################################################################
# API clients generate targets

# Alias for generate-all target
generate: generate-all

# Generate API clients for all languages, this is separate from generate-primary target due to
# the possibility of different command arguments
# This target requires GEN_BASE_DIR parameter to be supplied by user
generate-all:
	for lang in ${LANGS_ALL} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(GEN_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done

# Generate API clients for primary languages only
# This target requires GEN_BASE_DIR parameter to be supplied by user
generate-primary:
	for lang in ${LANGS_PRIMARY} ; do \
	  docker \
		  run \
		  --rm \
		  -v $(GEN_BASE_DIR):/local openapitools/openapi-generator-cli:v$(OPENAPI_GENERATOR_VERSION) \
		  generate \
		  --input-spec /local/$(LOCAL_SPEC_PATH) \
		  --config /local/clients/$$lang/conf.json \
		  --generator-name $$lang \
		  --output /local/clients/$$lang/generated; \
	done
	
################################################################
# API clients building targets for primary languages

build-javascript:
	npm install -g babel-cli
	cd clients/javascript/generated/ && \
	  npm install && \
	  npm link && \
	  npm run build
	cd test/javascript/ && \
	  npm link ../../clients/javascript/generated/

build-python:
	sudo apt-get install -y python-setuptools
	pip install twine wheel
	cd clients/python/generated/ && \
	  pip install -r requirements.txt && \
	  python3 setup.py sdist bdist_wheel && \
	  python3 setup.py install

build-ruby:
	cd clients/ruby/generated/ && \
	  gem install bundler --version=1.17.3 && \
	  bundle install --binstubs && \
	  gem build *.gemspec && \
	  gem install ./*.gem

################################################################
# API clients testing targets for primary languages

test-javascript: build-javascript
	cd clients/javascript/generated/ && \
	  npm run test
	mocha --timeout 5000 test/javascript/

test-python: build-python
	cd clients/python/generated/ && \
	  twine check dist/*

test-ruby: build-ruby

################################################################
# API clients package publishing targets for primary languages

publish-javascript: build-javascript
	cd clients/javascript/generated/ && \
	  npm publish

publish-python: build-python
	cd clients/python/generated/ && \
	  twine upload dist/*

publish-ruby: build-ruby
	cd clients/ruby/generated/ && \
	  gem push `ls *.gem`

################################################################
# Documentation targets

# Alias for doc-latest target
doc: doc-latest

# Generate API documentation locally as the latest version
doc-latest:
	bootprint openapi $(LOCAL_SPEC_PATH) doc/api/latest/

# Generate API documentation locally as the application's version
# This target requires APP_VERSION parameter to be supplied by user
doc-version:
	bootprint openapi $(LOCAL_SPEC_PATH) doc/api/$(APP_VERSION)/

# Publish documentation via GitHub Pages
doc-publish:
	CACHE_DIR=/tmp gh-pages --dist doc/

################################################################

.PHONY: ci stage clean deps init-spec init-langs-config generate generate-all generate-primary build-javascript build-python build-ruby test-javascript test-python test-ruby publish-javascript publish-python publish-ruby doc doc-latest doc-version doc-publish
