//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;


class BillingApi {
  BillingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Stripe Checkout URL for a tier upgrade
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BillingCreateCheckoutPostRequest] billingCreateCheckoutPostRequest (required):
  Future<Response> billingCreateCheckoutPostWithHttpInfo(BillingCreateCheckoutPostRequest billingCreateCheckoutPostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/billing/create-checkout';

    // ignore: prefer_final_locals
    Object? postBody = billingCreateCheckoutPostRequest;

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

  /// Stripe Checkout URL for a tier upgrade
  ///
  /// Parameters:
  ///
  /// * [BillingCreateCheckoutPostRequest] billingCreateCheckoutPostRequest (required):
  Future<void> billingCreateCheckoutPost(BillingCreateCheckoutPostRequest billingCreateCheckoutPostRequest,) async {
    final response = await billingCreateCheckoutPostWithHttpInfo(billingCreateCheckoutPostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stripe Billing Portal URL
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> billingCreatePortalPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/billing/create-portal';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Stripe Billing Portal URL
  Future<void> billingCreatePortalPost() async {
    final response = await billingCreatePortalPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Stripe webhook receiver
  ///
  /// Signature-verified inside the handler. Not for client use.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> billingWebhookPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/billing/webhook';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Stripe webhook receiver
  ///
  /// Signature-verified inside the handler. Not for client use.
  Future<void> billingWebhookPost() async {
    final response = await billingWebhookPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
