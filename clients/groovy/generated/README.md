# 

OpenAPI client for ipify, a simple public IP address API

This Groovy package, using the [http-builder-ng library](https://http-builder-ng.github.io/http-builder-ng/), is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 5.1.1-pre.0
- Package version: 5.1.1-pre.0
- Build date: 2024-03-12T13:23:21.164357246Z[Etc/UTC]
- Generator version: 7.4.0
- Build package: org.openapitools.codegen.languages.GroovyClientCodegen
For more information, please visit [https://github.com/oapicf/openapi-ipify](https://github.com/oapicf/openapi-ipify)

## Requirements

* Groovy 2.5.7
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

## Getting Started


```groovy
def apiInstance = new DefaultApi()
def format = "json" // String | Response format
def paramCallback = "paramCallback_example" // String | JSONP callback function name

apiInstance.getIp(format, paramCallback)
    {
    // on success
    def result = (Ip)it
    println result
    
}
    {
    // on failure
    statusCode, message ->
        println "${statusCode} ${message}"
};
```

