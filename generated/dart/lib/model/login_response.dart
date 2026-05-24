//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class LoginResponse {
  /// Returns a new [LoginResponse] instance.
  LoginResponse({
    this.accessToken,
    this.tokenType,
    this.userId,
    this.email,
    this.subscriptionTier,
    this.expiresAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  LoginResponseSubscriptionTierEnum? subscriptionTier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginResponse &&
    other.accessToken == accessToken &&
    other.tokenType == tokenType &&
    other.userId == userId &&
    other.email == email &&
    other.subscriptionTier == subscriptionTier &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (subscriptionTier == null ? 0 : subscriptionTier!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'LoginResponse[accessToken=$accessToken, tokenType=$tokenType, userId=$userId, email=$email, subscriptionTier=$subscriptionTier, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessToken != null) {
      json[r'access_token'] = this.accessToken;
    } else {
      json[r'access_token'] = null;
    }
    if (this.tokenType != null) {
      json[r'token_type'] = this.tokenType;
    } else {
      json[r'token_type'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.subscriptionTier != null) {
      json[r'subscription_tier'] = this.subscriptionTier;
    } else {
      json[r'subscription_tier'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    return json;
  }

  /// Returns a new [LoginResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginResponse(
        accessToken: mapValueOfType<String>(json, r'access_token'),
        tokenType: mapValueOfType<String>(json, r'token_type'),
        userId: mapValueOfType<int>(json, r'user_id'),
        email: mapValueOfType<String>(json, r'email'),
        subscriptionTier: LoginResponseSubscriptionTierEnum.fromJson(json[r'subscription_tier']),
        expiresAt: mapDateTime(json, r'expires_at', r''),
      );
    }
    return null;
  }

  static List<LoginResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginResponse> mapFromJson(dynamic json) {
    final map = <String, LoginResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginResponse-objects as value to a dart map
  static Map<String, List<LoginResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class LoginResponseSubscriptionTierEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginResponseSubscriptionTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FREE = LoginResponseSubscriptionTierEnum._(r'FREE');
  static const HOBBY = LoginResponseSubscriptionTierEnum._(r'HOBBY');
  static const PRO = LoginResponseSubscriptionTierEnum._(r'PRO');
  static const QUANT = LoginResponseSubscriptionTierEnum._(r'QUANT');

  /// List of all possible values in this [enum][LoginResponseSubscriptionTierEnum].
  static const values = <LoginResponseSubscriptionTierEnum>[
    FREE,
    HOBBY,
    PRO,
    QUANT,
  ];

  static LoginResponseSubscriptionTierEnum? fromJson(dynamic value) => LoginResponseSubscriptionTierEnumTypeTransformer().decode(value);

  static List<LoginResponseSubscriptionTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginResponseSubscriptionTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginResponseSubscriptionTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginResponseSubscriptionTierEnum] to String,
/// and [decode] dynamic data back to [LoginResponseSubscriptionTierEnum].
class LoginResponseSubscriptionTierEnumTypeTransformer {
  factory LoginResponseSubscriptionTierEnumTypeTransformer() => _instance ??= const LoginResponseSubscriptionTierEnumTypeTransformer._();

  const LoginResponseSubscriptionTierEnumTypeTransformer._();

  String encode(LoginResponseSubscriptionTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginResponseSubscriptionTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginResponseSubscriptionTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FREE': return LoginResponseSubscriptionTierEnum.FREE;
        case r'HOBBY': return LoginResponseSubscriptionTierEnum.HOBBY;
        case r'PRO': return LoginResponseSubscriptionTierEnum.PRO;
        case r'QUANT': return LoginResponseSubscriptionTierEnum.QUANT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginResponseSubscriptionTierEnumTypeTransformer] instance.
  static LoginResponseSubscriptionTierEnumTypeTransformer? _instance;
}


