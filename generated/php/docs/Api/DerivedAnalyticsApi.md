# Factorweave\DerivedAnalyticsApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**embeddingTickerGet()**](DerivedAnalyticsApi.md#embeddingTickerGet) | **GET** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT) |
| [**marketContextGet()**](DerivedAnalyticsApi.md#marketContextGet) | **GET** /market-context | Whole-universe factor dispersion, breadth, regime |
| [**reportCardTickerGet()**](DerivedAnalyticsApi.md#reportCardTickerGet) | **GET** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+) |
| [**riskClusterTickerGet()**](DerivedAnalyticsApi.md#riskClusterTickerGet) | **GET** /risk-cluster/{ticker} | Volatility regime a ticker&#39;s factor analogues landed in (PRO+) |


## `embeddingTickerGet()`

```php
embeddingTickerGet($ticker): \Factorweave\Model\EmbeddingTickerGet200Response
```

Raw 32-D regime-aware embedding vector (QUANT)

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


$apiInstance = new Factorweave\Api\DerivedAnalyticsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.

try {
    $result = $apiInstance->embeddingTickerGet($ticker);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DerivedAnalyticsApi->embeddingTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |

### Return type

[**\Factorweave\Model\EmbeddingTickerGet200Response**](../Model/EmbeddingTickerGet200Response.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `marketContextGet()`

```php
marketContextGet($latest)
```

Whole-universe factor dispersion, breadth, regime

FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.

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


$apiInstance = new Factorweave\Api\DerivedAnalyticsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$latest = 56; // int

try {
    $apiInstance->marketContextGet($latest);
} catch (Exception $e) {
    echo 'Exception when calling DerivedAnalyticsApi->marketContextGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **latest** | **int**|  | [optional] |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `reportCardTickerGet()`

```php
reportCardTickerGet($ticker)
```

Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)

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


$apiInstance = new Factorweave\Api\DerivedAnalyticsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.

try {
    $apiInstance->reportCardTickerGet($ticker);
} catch (Exception $e) {
    echo 'Exception when calling DerivedAnalyticsApi->reportCardTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `riskClusterTickerGet()`

```php
riskClusterTickerGet($ticker)
```

Volatility regime a ticker's factor analogues landed in (PRO+)

calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.

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


$apiInstance = new Factorweave\Api\DerivedAnalyticsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.

try {
    $apiInstance->riskClusterTickerGet($ticker);
} catch (Exception $e) {
    echo 'Exception when calling DerivedAnalyticsApi->riskClusterTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
