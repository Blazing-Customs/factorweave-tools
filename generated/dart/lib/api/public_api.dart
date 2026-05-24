//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class PublicApi {
  PublicApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Runtime feature flags
  ///
  /// paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> configGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/config';

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

  /// Runtime feature flags
  ///
  /// paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.
  Future<void> configGet() async {
    final response = await configGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// No-auth taste — one of the sample tickers
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<Response> demoTickerGetWithHttpInfo(String ticker,) async {
    // ignore: prefer_const_declarations
    final path = r'/demo/{ticker}'
      .replaceAll('{ticker}', ticker);

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

  /// No-auth taste — one of the sample tickers
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<void> demoTickerGet(String ticker,) async {
    final response = await demoTickerGetWithHttpInfo(ticker,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The demo-sample ticker list (8 names)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> demoTickersGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/demo/tickers';

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

  /// The demo-sample ticker list (8 names)
  Future<void> demoTickersGet() async {
    final response = await demoTickersGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Liveness check
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> healthGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/health';

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

  /// Liveness check
  Future<Error?> healthGet() async {
    final response = await healthGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Error',) as Error;
    
    }
    return null;
  }

  /// Static bundle metadata
  ///
  /// latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> manifestGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/manifest';

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

  /// Static bundle metadata
  ///
  /// latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.
  Future<void> manifestGet() async {
    final response = await manifestGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Detailed health + bundle freshness + degraded status
  ///
  /// Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> statusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/status';

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

  /// Detailed health + bundle freshness + degraded status
  ///
  /// Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.
  Future<void> statusGet() async {
    final response = await statusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
