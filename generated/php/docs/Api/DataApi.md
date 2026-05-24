# Factorweave\DataApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**csvFeaturesGet()**](DataApi.md#csvFeaturesGet) | **GET** /csv/features | CSV export of a ticker&#39;s features |
| [**featuresTickerGet()**](DataApi.md#featuresTickerGet) | **GET** /features/{ticker} | Factor row for a ticker |
| [**topGet()**](DataApi.md#topGet) | **GET** /top | Top-N tickers by a factor |


## `csvFeaturesGet()`

```php
csvFeaturesGet($ticker): string
```

CSV export of a ticker's features

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


$apiInstance = new Factorweave\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = 'ticker_example'; // string

try {
    $result = $apiInstance->csvFeaturesGet($ticker);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->csvFeaturesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**|  | |

### Return type

**string**

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `featuresTickerGet()`

```php
featuresTickerGet($ticker, $date, $start_date, $end_date): \Factorweave\Model\FeatureRow[]
```

Factor row for a ticker

No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.

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


$apiInstance = new Factorweave\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$start_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime
$end_date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime

try {
    $result = $apiInstance->featuresTickerGet($ticker, $date, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->featuresTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |
| **date** | **\DateTime**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\Factorweave\Model\FeatureRow[]**](../Model/FeatureRow.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `topGet()`

```php
topGet($factor, $n, $direction)
```

Top-N tickers by a factor

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


$apiInstance = new Factorweave\Api\DataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$factor = 'factor_example'; // string | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
$n = 25; // int
$direction = 'desc'; // string

try {
    $apiInstance->topGet($factor, $n, $direction);
} catch (Exception $e) {
    echo 'Exception when calling DataApi->topGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **factor** | **string**| mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, … | |
| **n** | **int**|  | [optional] [default to 25] |
| **direction** | **string**|  | [optional] [default to &#39;desc&#39;] |

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
