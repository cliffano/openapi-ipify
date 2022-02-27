# openapi_client.DefaultApi

All URIs are relative to *https://api.ipify.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ip**](DefaultApi.md#get_ip) | **GET** / | Get your public IP address


# **get_ip**
> bool, date, datetime, dict, float, int, list, str, none_type get_ip()

Get your public IP address

### Example


```python
import time
import openapi_client
from openapi_client.api import default_api
from openapi_client.model.ip import Ip
from pprint import pprint
# Defining the host is optional and defaults to https://api.ipify.org
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.ipify.org"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    format = "json" # str | Response format (optional)
    param_callback = "callback_example" # str | JSONP callback function name (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get your public IP address
        api_response = api_instance.get_ip(format=format, param_callback=param_callback)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DefaultApi->get_ip: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **str**| Response format | [optional]
 **param_callback** | **str**| JSONP callback function name | [optional]

### Return type

**bool, date, datetime, dict, float, int, list, str, none_type**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Your public IP address |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
