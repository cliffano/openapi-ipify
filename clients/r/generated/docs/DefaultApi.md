# DefaultApi

All URIs are relative to *https://api.ipify.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetIp**](DefaultApi.md#GetIp) | **GET** / | Get your public IP address


# **GetIp**
> Ip GetIp(format = var.format, callback = var.callback)

Get your public IP address

### Example
```R
library(openapi)

var_format <- 'format_example' # character | Response format
var_callback <- 'callback_example' # character | JSONP callback function name

#Get your public IP address
api_instance <- DefaultApi$new()
result <- api_instance$GetIp(format = var_format, callback = var_callback)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | Enum [json, jsonp] | Response format | [optional] 
 **callback** | **character**| JSONP callback function name | [optional] 

### Return type

[**Ip**](Ip.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/javascript, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Your public IP address |  -  |
