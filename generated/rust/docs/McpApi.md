# \McpApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mcp_post**](McpApi.md#mcp_post) | **POST** /mcp | Model Context Protocol — stateless streamable-HTTP



## mcp_post

> mcp_post(body)
Model Context Protocol — stateless streamable-HTTP

JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**body** | Option<**serde_json::Value**> |  |  |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

