//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class MCPApi {
  MCPApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Model Context Protocol — stateless streamable-HTTP
  ///
  /// JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<Response> mcpPostWithHttpInfo({ Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/mcp';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Model Context Protocol — stateless streamable-HTTP
  ///
  /// JSON-RPC 2.0 over POST. Supports `initialize`, `tools/list`, `tools/call`. 12 tools available — see https://factorweave.com/mcp.html and the MCP docs panel.
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<void> mcpPost({ Object? body, }) async {
    final response = await mcpPostWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
