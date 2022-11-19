# org.openapitools.client - Kotlin client library for openapi-ipify

OpenAPI client for ipify, a simple public IP address API

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 3.2.2-pre.0
- Package version: 
- Build package: org.openapitools.codegen.languages.KotlinClientCodegen
For more information, please visit [https://github.com/cliffano/openapi-ipify](https://github.com/cliffano/openapi-ipify)

## Requires

* Kotlin 1.6.10
* Gradle 7.5

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.ipify.org*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**getIp**](docs/DefaultApi.md#getip) | **GET** / | Get your public IP address


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.Ip](docs/Ip.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.


## Author

blah@cliffano.com