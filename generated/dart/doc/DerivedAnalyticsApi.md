# factorweave.api.DerivedAnalyticsApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**embeddingTickerGet**](DerivedAnalyticsApi.md#embeddingtickerget) | **GET** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT)
[**marketContextGet**](DerivedAnalyticsApi.md#marketcontextget) | **GET** /market-context | Whole-universe factor dispersion, breadth, regime
[**reportCardTickerGet**](DerivedAnalyticsApi.md#reportcardtickerget) | **GET** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
[**riskClusterTickerGet**](DerivedAnalyticsApi.md#riskclustertickerget) | **GET** /risk-cluster/{ticker} | Volatility regime a ticker's factor analogues landed in (PRO+)


# **embeddingTickerGet**
> EmbeddingTickerGet200Response embeddingTickerGet(ticker)

Raw 32-D regime-aware embedding vector (QUANT)

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

final api_instance = DerivedAnalyticsApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.

try {
    final result = api_instance.embeddingTickerGet(ticker);
    print(result);
} catch (e) {
    print('Exception when calling DerivedAnalyticsApi->embeddingTickerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**| Uppercase US ticker symbol. | 

### Return type

[**EmbeddingTickerGet200Response**](EmbeddingTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **marketContextGet**
> marketContextGet(latest)

Whole-universe factor dispersion, breadth, regime

FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.

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

final api_instance = DerivedAnalyticsApi();
final latest = 56; // int | 

try {
    api_instance.marketContextGet(latest);
} catch (e) {
    print('Exception when calling DerivedAnalyticsApi->marketContextGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latest** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportCardTickerGet**
> reportCardTickerGet(ticker)

Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)

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

final api_instance = DerivedAnalyticsApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.

try {
    api_instance.reportCardTickerGet(ticker);
} catch (e) {
    print('Exception when calling DerivedAnalyticsApi->reportCardTickerGet: $e\n');
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

# **riskClusterTickerGet**
> riskClusterTickerGet(ticker)

Volatility regime a ticker's factor analogues landed in (PRO+)

calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.

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

final api_instance = DerivedAnalyticsApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.

try {
    api_instance.riskClusterTickerGet(ticker);
} catch (e) {
    print('Exception when calling DerivedAnalyticsApi->riskClusterTickerGet: $e\n');
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

