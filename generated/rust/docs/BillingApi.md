# \BillingApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billing_create_checkout_post**](BillingApi.md#billing_create_checkout_post) | **POST** /billing/create-checkout | Stripe Checkout URL for a tier upgrade
[**billing_create_portal_post**](BillingApi.md#billing_create_portal_post) | **POST** /billing/create-portal | Stripe Billing Portal URL
[**billing_webhook_post**](BillingApi.md#billing_webhook_post) | **POST** /billing/webhook | Stripe webhook receiver



## billing_create_checkout_post

> billing_create_checkout_post(billing_create_checkout_post_request)
Stripe Checkout URL for a tier upgrade

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**billing_create_checkout_post_request** | [**BillingCreateCheckoutPostRequest**](BillingCreateCheckoutPostRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## billing_create_portal_post

> billing_create_portal_post()
Stripe Billing Portal URL

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## billing_webhook_post

> billing_webhook_post()
Stripe webhook receiver

Signature-verified inside the handler. Not for client use.

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

