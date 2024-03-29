# DefaultApi

All URIs are relative to *https://api.ipify.org*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getIp**](DefaultApi.md#getIp) | **GET** / | Get your public IP address |


<a id="getIp"></a>
# **getIp**
> Ip getIp(format, paramCallback)

Get your public IP address

### Example
```java
// Import classes:
import com.github.openapiipify.ApiClient;
import com.github.openapiipify.ApiException;
import com.github.openapiipify.Configuration;
import com.github.openapiipify.models.*;
import com.github.openapiipify.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.ipify.org");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String format = "json"; // String | Response format
    String paramCallback = "paramCallback_example"; // String | JSONP callback function name
    try {
      Ip result = apiInstance.getIp(format, paramCallback);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#getIp");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **format** | **String**| Response format | [optional] [enum: json, jsonp] |
| **paramCallback** | **String**| JSONP callback function name | [optional] |

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

