//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class DataApi {
  DataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// CSV export of a ticker's features
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  Future<Response> csvFeaturesGetWithHttpInfo(String ticker,) async {
    // ignore: prefer_const_declarations
    final path = r'/csv/features';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ticker', ticker));

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

  /// CSV export of a ticker's features
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  Future<String?> csvFeaturesGet(String ticker,) async {
    final response = await csvFeaturesGetWithHttpInfo(ticker,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Factor row for a ticker
  ///
  /// No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  ///
  /// * [DateTime] date:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> featuresTickerGetWithHttpInfo(String ticker, { DateTime? date, DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/features/{ticker}'
      .replaceAll('{ticker}', ticker);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'start_date', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'end_date', endDate));
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

  /// Factor row for a ticker
  ///
  /// No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.
  ///
  /// Parameters:
  ///
  /// * [String] ticker (required):
  ///   Uppercase US ticker symbol.
  ///
  /// * [DateTime] date:
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<List<FeatureRow>?> featuresTickerGet(String ticker, { DateTime? date, DateTime? startDate, DateTime? endDate, }) async {
    final response = await featuresTickerGetWithHttpInfo(ticker,  date: date, startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FeatureRow>') as List)
        .cast<FeatureRow>()
        .toList(growable: false);

    }
    return null;
  }

  /// Top-N tickers by a factor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] factor (required):
  ///   mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
  ///
  /// * [int] n:
  ///
  /// * [String] direction:
  Future<Response> topGetWithHttpInfo(String factor, { int? n, String? direction, }) async {
    // ignore: prefer_const_declarations
    final path = r'/top';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'factor', factor));
    if (n != null) {
      queryParams.addAll(_queryParams('', 'n', n));
    }
    if (direction != null) {
      queryParams.addAll(_queryParams('', 'direction', direction));
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

  /// Top-N tickers by a factor
  ///
  /// Parameters:
  ///
  /// * [String] factor (required):
  ///   mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
  ///
  /// * [int] n:
  ///
  /// * [String] direction:
  Future<void> topGet(String factor, { int? n, String? direction, }) async {
    final response = await topGetWithHttpInfo(factor,  n: n, direction: direction, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
