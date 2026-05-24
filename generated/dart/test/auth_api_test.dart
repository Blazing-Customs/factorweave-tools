//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:factorweave/api.dart';
import 'package:test/test.dart';


/// tests for AuthApi
void main() {
  // final instance = AuthApi();

  group('tests for AuthApi', () {
    // Exchange email + password for a JWT
    //
    //Future<LoginResponse> authLoginPost(AuthLoginPostRequest authLoginPostRequest) async
    test('test authLoginPost', () async {
      // TODO
    });

    // Current user profile + tier + daily usage
    //
    //Future authMeGet() async
    test('test authMeGet', () async {
      // TODO
    });

    // Create account (free tier)
    //
    // Always creates a FREE account regardless of submitted subscription_tier — paid upgrades happen via Stripe Checkout (POST /billing/create-checkout).
    //
    //Future authRegisterPost(AuthRegisterPostRequest authRegisterPostRequest) async
    test('test authRegisterPost', () async {
      // TODO
    });

    // List your long-lived dev API keys
    //
    //Future meKeysGet() async
    test('test meKeysGet', () async {
      // TODO
    });

    // Revoke a dev API key
    //
    //Future meKeysIdDelete(int id) async
    test('test meKeysIdDelete', () async {
      // TODO
    });

    // Mint a new dev API key
    //
    //Future meKeysPost({ MeKeysPostRequest meKeysPostRequest }) async
    test('test meKeysPost', () async {
      // TODO
    });

  });
}
