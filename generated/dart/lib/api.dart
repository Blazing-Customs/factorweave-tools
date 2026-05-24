//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library factorweave;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/alerts_api.dart';
part 'api/auth_api.dart';
part 'api/billing_api.dart';
part 'api/data_api.dart';
part 'api/derived_analytics_api.dart';
part 'api/labels_api.dart';
part 'api/mcp_api.dart';
part 'api/public_api.dart';
part 'api/usage_api.dart';
part 'api/vector_search_api.dart';

part 'model/alerts_rules_post_request.dart';
part 'model/auth_login_post_request.dart';
part 'model/auth_register_post_request.dart';
part 'model/billing_create_checkout_post_request.dart';
part 'model/embedding_ticker_get200_response.dart';
part 'model/error.dart';
part 'model/feature_row.dart';
part 'model/login_response.dart';
part 'model/me_keys_post_request.dart';
part 'model/neighbor_row.dart';
part 'model/tier_gate_error.dart';
part 'model/vector_search_similar_ticker_get200_response.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
