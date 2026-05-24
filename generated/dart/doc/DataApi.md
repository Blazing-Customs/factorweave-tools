# factorweave.api.DataApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**csvFeaturesGet**](DataApi.md#csvfeaturesget) | **GET** /csv/features | CSV export of a ticker's features
[**featuresTickerGet**](DataApi.md#featurestickerget) | **GET** /features/{ticker} | Factor row for a ticker
[**topGet**](DataApi.md#topget) | **GET** /top | Top-N tickers by a factor


# **csvFeaturesGet**
> String csvFeaturesGet(ticker)

CSV export of a ticker's features

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

final api_instance = DataApi();
final ticker = ticker_example; // String | 

try {
    final result = api_instance.csvFeaturesGet(ticker);
    print(result);
} catch (e) {
    print('Exception when calling DataApi->csvFeaturesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**|  | 

### Return type

**String**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **featuresTickerGet**
> List<FeatureRow> featuresTickerGet(ticker, date, startDate, endDate)

Factor row for a ticker

No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.

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

final api_instance = DataApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.
final date = 2013-10-20; // DateTime | 
final startDate = 2013-10-20; // DateTime | 
final endDate = 2013-10-20; // DateTime | 

try {
    final result = api_instance.featuresTickerGet(ticker, date, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DataApi->featuresTickerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**| Uppercase US ticker symbol. | 
 **date** | **DateTime**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**List<FeatureRow>**](FeatureRow.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topGet**
> topGet(factor, n, direction)

Top-N tickers by a factor

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

final api_instance = DataApi();
final factor = factor_example; // String | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
final n = 56; // int | 
final direction = direction_example; // String | 

try {
    api_instance.topGet(factor, n, direction);
} catch (e) {
    print('Exception when calling DataApi->topGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **factor** | **String**| mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, … | 
 **n** | **int**|  | [optional] [default to 25]
 **direction** | **String**|  | [optional] [default to 'desc']

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

