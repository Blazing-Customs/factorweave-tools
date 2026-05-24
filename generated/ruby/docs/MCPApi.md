# Factorweave::MCPApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mcp_post**](MCPApi.md#mcp_post) | **POST** /mcp | Model Context Protocol — stateless streamable-HTTP |


## mcp_post

> mcp_post(opts)

Model Context Protocol — stateless streamable-HTTP

JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::MCPApi.new
opts = {
  body: { ... } # Object | 
}

begin
  # Model Context Protocol — stateless streamable-HTTP
  api_instance.mcp_post(opts)
rescue Factorweave::ApiError => e
  puts "Error when calling MCPApi->mcp_post: #{e}"
end
```

#### Using the mcp_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mcp_post_with_http_info(opts)

```ruby
begin
  # Model Context Protocol — stateless streamable-HTTP
  data, status_code, headers = api_instance.mcp_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling MCPApi->mcp_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

