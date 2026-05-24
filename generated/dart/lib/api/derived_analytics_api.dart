//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class DerivedAnalyticsApi {
  DerivedAnalyticsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Raw 32-D regime-aware embedding vector (QUANT)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<Response> embeddingTickerGetWithHttpInfo(String ticker,) async {
    // ignore: prefer_const_declarations
    final path = r'/embedding/{ticker}'
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

  /// Raw 32-D regime-aware embedding vector (QUANT)
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<EmbeddingTickerGet200Response?> embeddingTickerGet(String ticker,) async {
    final response = await embeddingTickerGetWithHttpInfo(ticker,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmbeddingTickerGet200Response',) as EmbeddingTickerGet200Response;
    
    }
    return null;
  }

  /// Whole-universe factor dispersion, breadth, regime
  ///
  /// FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] latest:
  Future<Response> marketContextGetWithHttpInfo({ int? latest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/market-context';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (latest != null) {
      queryParams.addAll(_queryParams('', 'latest', latest));
    }

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

  /// Whole-universe factor dispersion, breadth, regime
  ///
  /// FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.
  ///
  /// Parameters:
  ///
  /// * [int] latest:
  Future<void> marketContextGet({ int? latest, }) async {
    final response = await marketContextGetWithHttpInfo( latest: latest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<Response> reportCardTickerGetWithHttpInfo(String ticker,) async {
    // ignore: prefer_const_declarations
    final path = r'/report-card/{ticker}'
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

  /// Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<void> reportCardTickerGet(String ticker,) async {
    final response = await reportCardTickerGetWithHttpInfo(ticker,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Volatility regime a ticker's factor analogues landed in (PRO+)
  ///
  /// calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<Response> riskClusterTickerGetWithHttpInfo(String ticker,) async {
    // ignore: prefer_const_declarations
    final path = r'/risk-cluster/{ticker}'
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

  /// Volatility regime a ticker's factor analogues landed in (PRO+)
  ///
  /// calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  Future<void> riskClusterTickerGet(String ticker,) async {
    final response = await riskClusterTickerGetWithHttpInfo(ticker,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
