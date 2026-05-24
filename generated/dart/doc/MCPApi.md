# factorweave.api.MCPApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mcpPost**](MCPApi.md#mcppost) | **POST** /mcp | Model Context Protocol — stateless streamable-HTTP


# **mcpPost**
> mcpPost(body)

Model Context Protocol — stateless streamable-HTTP

JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = MCPApi();
final body = Object(); // Object | 

try {
    api_instance.mcpPost(body);
} catch (e) {
    print('Exception when calling MCPApi->mcpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

