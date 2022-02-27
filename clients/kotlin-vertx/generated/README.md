# org.openapitools - Kotlin Server library for openapi-ipify

## Requires

* Kotlin 1.3.10
* Maven 3.3

## Build

```
mvn clean package
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.

    <a name="documentation-for-api-endpoints"></a>
    ## Documentation for API Endpoints

    All URIs are relative to *https://api.ipify.org*

    Class | Method | HTTP request | Description
    ------------ | ------------- | ------------- | -------------
    *DefaultApi* | [**getIp**](docs/DefaultApi.md#getip) | **GET** / | Get your public IP address
    

    <a name="documentation-for-models"></a>
    ## Documentation for Models

         - [org.openapitools.server.api.model.Ip](docs/Ip.md)
        

<a name="documentation-for-authorization"></a>
## Documentation for Authorization

    All endpoints do not require authorization.