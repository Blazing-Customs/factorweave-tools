# Factorweave\MCPApi

All URIs are relative to https://factorweave.com/api, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**mcpPost()**](MCPApi.md#mcpPost) | **POST** /mcp | Model Context Protocol — stateless streamable-HTTP |


## `mcpPost()`

```php
mcpPost($body)
```

Model Context Protocol — stateless streamable-HTTP

JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Factorweave\Api\MCPApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = array('key' => new \stdClass); // object

try {
    $apiInstance->mcpPost($body);
} catch (Exception $e) {
    echo 'Exception when calling MCPApi->mcpPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | **object**|  | [optional] |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
