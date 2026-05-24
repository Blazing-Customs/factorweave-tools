# Factorweave\LabelsApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**labelsTickerGet()**](LabelsApi.md#labelsTickerGet) | **GET** /labels/{ticker} | Leak-free forward-return labels (PRO+) |


## `labelsTickerGet()`

```php
labelsTickerGet($ticker)
```

Leak-free forward-return labels (PRO+)

fwd_ret_1d/5d/20d + binary targets (target_1d_up1, target_5d_up3, target_20d_up10). Last 252 trading days.

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


$apiInstance = new Factorweave\Api\LabelsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ticker = AAPL; // string | Uppercase US ticker symbol.

try {
    $apiInstance->labelsTickerGet($ticker);
} catch (Exception $e) {
    echo 'Exception when calling LabelsApi->labelsTickerGet: ', $e->getMessage(), PHP_EOL;
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
