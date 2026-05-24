# \AuthApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_login_post**](AuthApi.md#auth_login_post) | **POST** /auth/login | Exchange email + password for a JWT
[**auth_me_get**](AuthApi.md#auth_me_get) | **GET** /auth/me | Current user profile + tier + daily usage
[**auth_register_post**](AuthApi.md#auth_register_post) | **POST** /auth/register | Create account (free tier)
[**me_keys_get**](AuthApi.md#me_keys_get) | **GET** /me/keys | List your long-lived dev API keys
[**me_keys_id_delete**](AuthApi.md#me_keys_id_delete) | **DELETE** /me/keys/{id} | Revoke a dev API key
[**me_keys_post**](AuthApi.md#me_keys_post) | **POST** /me/keys | Mint a new dev API key



## auth_login_post

> models::LoginResponse auth_login_post(auth_login_post_request)
Exchange email + password for a JWT

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**auth_login_post_request** | [**AuthLoginPostRequest**](AuthLoginPostRequest.md) |  | [required] |

### Return type

[**models::LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## auth_me_get

> auth_me_get()
Current user profile + tier + daily usage

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


## auth_register_post

> auth_register_post(auth_register_post_request)
Create account (free tier)

Always creates a FREE account regardless of submitted subscription_tier — paid upgrades happen via Stripe Checkout (POST /billing/create-checkout).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**auth_register_post_request** | [**AuthRegisterPostRequest**](AuthRegisterPostRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## me_keys_get

> me_keys_get()
List your long-lived dev API keys

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


## me_keys_id_delete

> me_keys_id_delete(id)
Revoke a dev API key

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## me_keys_post

> me_keys_post(me_keys_post_request)
Mint a new dev API key

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**me_keys_post_request** | Option<[**MeKeysPostRequest**](MeKeysPostRequest.md)> |  |  |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

