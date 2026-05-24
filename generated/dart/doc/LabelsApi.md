# factorweave.api.LabelsApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**labelsTickerGet**](LabelsApi.md#labelstickerget) | **GET** /labels/{ticker} | Leak-free forward-return labels (PRO+)


# **labelsTickerGet**
> labelsTickerGet(ticker)

Leak-free forward-return labels (PRO+)

fwd_ret_1d/5d/20d + binary targets (target_1d_up1, target_5d_up3, target_20d_up10). Last 252 trading days.

### Example
```dart
import 'package:factorweave/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = LabelsApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.

try {
    api_instance.labelsTickerGet(ticker);
} catch (e) {
    print('Exception when calling LabelsApi->labelsTickerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**| Uppercase US ticker symbol. | 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

