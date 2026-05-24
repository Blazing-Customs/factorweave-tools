# factorweave.api.VectorSearchApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vectorSearchSimilarTickerGet**](VectorSearchApi.md#vectorsearchsimilartickerget) | **GET** /vector-search/similar/{ticker} | Top-K nearest setups by similarity


# **vectorSearchSimilarTickerGet**
> VectorSearchSimilarTickerGet200Response vectorSearchSimilarTickerGet(ticker, method, limit, minLookbackDays)

Top-K nearest setups by similarity

Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.

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

final api_instance = VectorSearchApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.
final method = method_example; // String | 
final limit = 56; // int | 
final minLookbackDays = 56; // int | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs.

try {
    final result = api_instance.vectorSearchSimilarTickerGet(ticker, method, limit, minLookbackDays);
    print(result);
} catch (e) {
    print('Exception when calling VectorSearchApi->vectorSearchSimilarTickerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**| Uppercase US ticker symbol. | 
 **method** | **String**|  | [optional] [default to 'cosine']
 **limit** | **int**|  | [optional] [default to 50]
 **minLookbackDays** | **int**| Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. | [optional] [default to 0]

### Return type

[**VectorSearchSimilarTickerGet200Response**](VectorSearchSimilarTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

