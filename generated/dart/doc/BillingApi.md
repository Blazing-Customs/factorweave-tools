# factorweave.api.BillingApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingCreateCheckoutPost**](BillingApi.md#billingcreatecheckoutpost) | **POST** /billing/create-checkout | Stripe Checkout URL for a tier upgrade
[**billingCreatePortalPost**](BillingApi.md#billingcreateportalpost) | **POST** /billing/create-portal | Stripe Billing Portal URL
[**billingWebhookPost**](BillingApi.md#billingwebhookpost) | **POST** /billing/webhook | Stripe webhook receiver


# **billingCreateCheckoutPost**
> billingCreateCheckoutPost(billingCreateCheckoutPostRequest)

Stripe Checkout URL for a tier upgrade

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

final api_instance = BillingApi();
final billingCreateCheckoutPostRequest = BillingCreateCheckoutPostRequest(); // BillingCreateCheckoutPostRequest | 

try {
    api_instance.billingCreateCheckoutPost(billingCreateCheckoutPostRequest);
} catch (e) {
    print('Exception when calling BillingApi->billingCreateCheckoutPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingCreateCheckoutPostRequest** | [**BillingCreateCheckoutPostRequest**](BillingCreateCheckoutPostRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingCreatePortalPost**
> billingCreatePortalPost()

Stripe Billing Portal URL

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

final api_instance = BillingApi();

try {
    api_instance.billingCreatePortalPost();
} catch (e) {
    print('Exception when calling BillingApi->billingCreatePortalPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingWebhookPost**
> billingWebhookPost()

Stripe webhook receiver

Signature-verified inside the handler. Not for client use.

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = BillingApi();

try {
    api_instance.billingWebhookPost();
} catch (e) {
    print('Exception when calling BillingApi->billingWebhookPost: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

