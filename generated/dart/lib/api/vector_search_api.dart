//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class VectorSearchApi {
  VectorSearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Top-K nearest setups by similarity
  ///
  /// Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  ///
  /// * [String] method:
  ///
  /// * [int] limit:
  ///
  /// * [int] minLookbackDays:
  ///   Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs.
  Future<Response> vectorSearchSimilarTickerGetWithHttpInfo(String ticker, { String? method, int? limit, int? minLookbackDays, }) async {
    // ignore: prefer_const_declarations
    final path = r'/vector-search/similar/{ticker}'
      .replaceAll('{ticker}', ticker);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (method != null) {
      queryParams.addAll(_queryParams('', 'method', method));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (minLookbackDays != null) {
      queryParams.addAll(_queryParams('', 'min_lookback_days', minLookbackDays));
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

  /// Top-K nearest setups by similarity
  ///
  /// Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  ///
  /// * [String] method:
  ///
  /// * [int] limit:
  ///
  /// * [int] minLookbackDays:
  ///   Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs.
  Future<VectorSearchSimilarTickerGet200Response?> vectorSearchSimilarTickerGet(String ticker, { String? method, int? limit, int? minLookbackDays, }) async {
    final response = await vectorSearchSimilarTickerGetWithHttpInfo(ticker,  method: method, limit: limit, minLookbackDays: minLookbackDays, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VectorSearchSimilarTickerGet200Response',) as VectorSearchSimilarTickerGet200Response;
    
    }
    return null;
  }
}
