# openapi
OpenAPI client for ipify, a simple public IP address API

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.9.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [http://blog.cliffano.com](http://blog.cliffano.com)

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: openapi
version: 1.0.0
description: OpenAPI API client
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


var api_instance = new DefaultApi();
var format = format_example; // String | Response format
var callback = callback_example; // String | JSONP callback function name

try {
    var result = api_instance.getIp(format, callback);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getIp: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.ipify.org*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**getIp**](docs//DefaultApi.md#getip) | **GET** / | Get your public IP address


## Documentation For Models

 - [Ip](docs//Ip.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

blah@cliffano.com


