//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class AlertsApi {
  AlertsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List your alert rules
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> alertsRulesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/alerts/rules';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List your alert rules
  Future<void> alertsRulesGet() async {
    final response = await alertsRulesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an alert rule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> alertsRulesIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/alerts/rules/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an alert rule
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<void> alertsRulesIdDelete(int id,) async {
    final response = await alertsRulesIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create an alert rule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AlertsRulesPostRequest] alertsRulesPostRequest (required):
  Future<Response> alertsRulesPostWithHttpInfo(AlertsRulesPostRequest alertsRulesPostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/alerts/rules';

    // ignore: prefer_final_locals
    Object? postBody = alertsRulesPostRequest;

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

  /// Create an alert rule
  ///
  /// Parameters:
  ///
  /// * [AlertsRulesPostRequest] alertsRulesPostRequest (required):
  Future<void> alertsRulesPost(AlertsRulesPostRequest alertsRulesPostRequest,) async {
    final response = await alertsRulesPostWithHttpInfo(alertsRulesPostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
