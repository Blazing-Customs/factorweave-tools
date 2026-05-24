# Factorweave\AlertsApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**alertsRulesGet()**](AlertsApi.md#alertsRulesGet) | **GET** /alerts/rules | List your alert rules |
| [**alertsRulesIdDelete()**](AlertsApi.md#alertsRulesIdDelete) | **DELETE** /alerts/rules/{id} | Delete an alert rule |
| [**alertsRulesPost()**](AlertsApi.md#alertsRulesPost) | **POST** /alerts/rules | Create an alert rule |


## `alertsRulesGet()`

```php
alertsRulesGet()
```

List your alert rules

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


$apiInstance = new Factorweave\Api\AlertsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->alertsRulesGet();
} catch (Exception $e) {
    echo 'Exception when calling AlertsApi->alertsRulesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

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

## `alertsRulesIdDelete()`

```php
alertsRulesIdDelete($id)
```

Delete an alert rule

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


$apiInstance = new Factorweave\Api\AlertsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int

try {
    $apiInstance->alertsRulesIdDelete($id);
} catch (Exception $e) {
    echo 'Exception when calling AlertsApi->alertsRulesIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

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

## `alertsRulesPost()`

```php
alertsRulesPost($alerts_rules_post_request)
```

Create an alert rule

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


$apiInstance = new Factorweave\Api\AlertsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$alerts_rules_post_request = new \Factorweave\Model\AlertsRulesPostRequest(); // \Factorweave\Model\AlertsRulesPostRequest

try {
    $apiInstance->alertsRulesPost($alerts_rules_post_request);
} catch (Exception $e) {
    echo 'Exception when calling AlertsApi->alertsRulesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **alerts_rules_post_request** | [**\Factorweave\Model\AlertsRulesPostRequest**](../Model/AlertsRulesPostRequest.md)|  | |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
