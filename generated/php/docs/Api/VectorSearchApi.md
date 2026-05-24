# Factorweave\VectorSearchApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**vectorSearchSimilarTickerGet()**](VectorSearchApi.md#vectorSearchSimilarTickerGet) | **GET** /vector-search/similar/{ticker} | Top-K nearest setups by similarity |


## `vectorSearchSimilarTickerGet()`

```php
vectorSearchSimilarTickerGet($ticker, $method, $limit, $min_lookback_days): \Factorweave\Model\VectorSearchSimilarTickerGet200Response
```

Top-K nearest setups by similarity

Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKeyAuth
$config = Factorweave\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Factorweave\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Factorweave\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Factorweave\Api\VectorSearchApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.
$method = 'cosine'; // string
$limit = 50; // int
$min_lookback_days = 0; // int | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs.

try {
    $result = $apiInstance->vectorSearchSimilarTickerGet($ticker, $method, $limit, $min_lookback_days);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VectorSearchApi->vectorSearchSimilarTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |
| **method** | **string**|  | [optional] [default to &#39;cosine&#39;] |
| **limit** | **int**|  | [optional] [default to 50] |
| **min_lookback_days** | **int**| Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. | [optional] [default to 0] |

### Return type

[**\Factorweave\Model\VectorSearchSimilarTickerGet200Response**](../Model/VectorSearchSimilarTickerGet200Response.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
