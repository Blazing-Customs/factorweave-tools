# Factorweave\PublicApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**configGet()**](PublicApi.md#configGet) | **GET** /config | Runtime feature flags |
| [**demoTickerGet()**](PublicApi.md#demoTickerGet) | **GET** /demo/{ticker} | No-auth taste — one of the sample tickers |
| [**demoTickersGet()**](PublicApi.md#demoTickersGet) | **GET** /demo/tickers | The demo-sample ticker list (8 names) |
| [**healthGet()**](PublicApi.md#healthGet) | **GET** /health | Liveness check |
| [**manifestGet()**](PublicApi.md#manifestGet) | **GET** /manifest | Static bundle metadata |
| [**statusGet()**](PublicApi.md#statusGet) | **GET** /status | Detailed health + bundle freshness + degraded status |


## `configGet()`

```php
configGet()
```

Runtime feature flags

paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $apiInstance->configGet();
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->configGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `demoTickerGet()`

```php
demoTickerGet($ticker)
```

No-auth taste — one of the sample tickers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ticker = AAPL; // string | Uppercase US ticker symbol.

try {
    $apiInstance->demoTickerGet($ticker);
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->demoTickerGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ticker** | **string**| Uppercase US ticker symbol. | |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `demoTickersGet()`

```php
demoTickersGet()
```

The demo-sample ticker list (8 names)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $apiInstance->demoTickersGet();
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->demoTickersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `healthGet()`

```php
healthGet(): \Factorweave\Model\Error
```

Liveness check

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->healthGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->healthGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Factorweave\Model\Error**](../Model/Error.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `manifestGet()`

```php
manifestGet()
```

Static bundle metadata

latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $apiInstance->manifestGet();
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->manifestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `statusGet()`

```php
statusGet()
```

Detailed health + bundle freshness + degraded status

Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\PublicApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $apiInstance->statusGet();
} catch (Exception $e) {
    echo 'Exception when calling PublicApi->statusGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
