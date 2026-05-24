# Factorweave\BillingApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**billingCreateCheckoutPost()**](BillingApi.md#billingCreateCheckoutPost) | **POST** /billing/create-checkout | Stripe Checkout URL for a tier upgrade |
| [**billingCreatePortalPost()**](BillingApi.md#billingCreatePortalPost) | **POST** /billing/create-portal | Stripe Billing Portal URL |
| [**billingWebhookPost()**](BillingApi.md#billingWebhookPost) | **POST** /billing/webhook | Stripe webhook receiver |


## `billingCreateCheckoutPost()`

```php
billingCreateCheckoutPost($billing_create_checkout_post_request)
```

Stripe Checkout URL for a tier upgrade

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


$apiInstance = new Factorweave\Api\BillingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$billing_create_checkout_post_request = new \Factorweave\Model\BillingCreateCheckoutPostRequest(); // \Factorweave\Model\BillingCreateCheckoutPostRequest

try {
    $apiInstance->billingCreateCheckoutPost($billing_create_checkout_post_request);
} catch (Exception $e) {
    echo 'Exception when calling BillingApi->billingCreateCheckoutPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **billing_create_checkout_post_request** | [**\Factorweave\Model\BillingCreateCheckoutPostRequest**](../Model/BillingCreateCheckoutPostRequest.md)|  | |

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

## `billingCreatePortalPost()`

```php
billingCreatePortalPost()
```

Stripe Billing Portal URL

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


$apiInstance = new Factorweave\Api\BillingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->billingCreatePortalPost();
} catch (Exception $e) {
    echo 'Exception when calling BillingApi->billingCreatePortalPost: ', $e->getMessage(), PHP_EOL;
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

## `billingWebhookPost()`

```php
billingWebhookPost()
```

Stripe webhook receiver

Signature-verified inside the handler. Not for client use.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\BillingApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $apiInstance->billingWebhookPost();
} catch (Exception $e) {
    echo 'Exception when calling BillingApi->billingWebhookPost: ', $e->getMessage(), PHP_EOL;
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
