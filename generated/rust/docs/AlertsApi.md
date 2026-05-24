# \AlertsApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alerts_rules_get**](AlertsApi.md#alerts_rules_get) | **GET** /alerts/rules | List your alert rules
[**alerts_rules_id_delete**](AlertsApi.md#alerts_rules_id_delete) | **DELETE** /alerts/rules/{id} | Delete an alert rule
[**alerts_rules_post**](AlertsApi.md#alerts_rules_post) | **POST** /alerts/rules | Create an alert rule



## alerts_rules_get

> alerts_rules_get()
List your alert rules

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


## alerts_rules_id_delete

> alerts_rules_id_delete(id)
Delete an alert rule

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


## alerts_rules_post

> alerts_rules_post(alerts_rules_post_request)
Create an alert rule

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**alerts_rules_post_request** | [**AlertsRulesPostRequest**](AlertsRulesPostRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

