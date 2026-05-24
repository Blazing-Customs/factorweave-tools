//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Exchange email + password for a JWT
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthLoginPostRequest] authLoginPostRequest (required):
  Future<Response> authLoginPostWithHttpInfo(AuthLoginPostRequest authLoginPostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/login';

    // ignore: prefer_final_locals
    Object? postBody = authLoginPostRequest;

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

  /// Exchange email + password for a JWT
  ///
  /// Parameters:
  ///
  /// * [AuthLoginPostRequest] authLoginPostRequest (required):
  Future<LoginResponse?> authLoginPost(AuthLoginPostRequest authLoginPostRequest,) async {
    final response = await authLoginPostWithHttpInfo(authLoginPostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginResponse',) as LoginResponse;
    
    }
    return null;
  }

  /// Current user profile + tier + daily usage
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> authMeGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/auth/me';

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

  /// Current user profile + tier + daily usage
  Future<void> authMeGet() async {
    final response = await authMeGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create account (free tier)
  ///
  /// Always creates a FREE account regardless of submitted subscription_tier — paid upgrades happen via Stripe Checkout (POST /billing/create-checkout).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthRegisterPostRequest] authRegisterPostRequest (required):
  Future<Response> authRegisterPostWithHttpInfo(AuthRegisterPostRequest authRegisterPostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/register';

    // ignore: prefer_final_locals
    Object? postBody = authRegisterPostRequest;

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

  /// Create account (free tier)
  ///
  /// Always creates a FREE account regardless of submitted subscription_tier — paid upgrades happen via Stripe Checkout (POST /billing/create-checkout).
  ///
  /// Parameters:
  ///
  /// * [AuthRegisterPostRequest] authRegisterPostRequest (required):
  Future<void> authRegisterPost(AuthRegisterPostRequest authRegisterPostRequest,) async {
    final response = await authRegisterPostWithHttpInfo(authRegisterPostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List your long-lived dev API keys
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> meKeysGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/me/keys';

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

  /// List your long-lived dev API keys
  Future<void> meKeysGet() async {
    final response = await meKeysGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke a dev API key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> meKeysIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/me/keys/{id}'
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

  /// Revoke a dev API key
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<void> meKeysIdDelete(int id,) async {
    final response = await meKeysIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mint a new dev API key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MeKeysPostRequest] meKeysPostRequest:
  Future<Response> meKeysPostWithHttpInfo({ MeKeysPostRequest? meKeysPostRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/me/keys';

    // ignore: prefer_final_locals
    Object? postBody = meKeysPostRequest;

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

  /// Mint a new dev API key
  ///
  /// Parameters:
  ///
  /// * [MeKeysPostRequest] meKeysPostRequest:
  Future<void> meKeysPost({ MeKeysPostRequest? meKeysPostRequest, }) async {
    final response = await meKeysPostWithHttpInfo( meKeysPostRequest: meKeysPostRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
