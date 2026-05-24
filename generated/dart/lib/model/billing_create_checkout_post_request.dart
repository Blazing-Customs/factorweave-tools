//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class BillingCreateCheckoutPostRequest {
  /// Returns a new [BillingCreateCheckoutPostRequest] instance.
  BillingCreateCheckoutPostRequest({
    required this.tier,
    this.billingPeriod = const BillingCreateCheckoutPostRequestBillingPeriodEnum._('monthly'),
  });

  BillingCreateCheckoutPostRequestTierEnum tier;

  BillingCreateCheckoutPostRequestBillingPeriodEnum billingPeriod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingCreateCheckoutPostRequest &&
    other.tier == tier &&
    other.billingPeriod == billingPeriod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tier.hashCode) +
    (billingPeriod.hashCode);

  @override
  String toString() => 'BillingCreateCheckoutPostRequest[tier=$tier, billingPeriod=$billingPeriod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tier'] = this.tier;
      json[r'billing_period'] = this.billingPeriod;
    return json;
  }

  /// Returns a new [BillingCreateCheckoutPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingCreateCheckoutPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BillingCreateCheckoutPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BillingCreateCheckoutPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BillingCreateCheckoutPostRequest(
        tier: BillingCreateCheckoutPostRequestTierEnum.fromJson(json[r'tier'])!,
        billingPeriod: BillingCreateCheckoutPostRequestBillingPeriodEnum.fromJson(json[r'billing_period']) ?? 'monthly',
      );
    }
    return null;
  }

  static List<BillingCreateCheckoutPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingCreateCheckoutPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingCreateCheckoutPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingCreateCheckoutPostRequest> mapFromJson(dynamic json) {
    final map = <String, BillingCreateCheckoutPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingCreateCheckoutPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingCreateCheckoutPostRequest-objects as value to a dart map
  static Map<String, List<BillingCreateCheckoutPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingCreateCheckoutPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingCreateCheckoutPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tier',
  };
}


class BillingCreateCheckoutPostRequestTierEnum {
  /// Instantiate a new enum with the provided [value].
  const BillingCreateCheckoutPostRequestTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOBBY = BillingCreateCheckoutPostRequestTierEnum._(r'HOBBY');
  static const PRO = BillingCreateCheckoutPostRequestTierEnum._(r'PRO');
  static const QUANT = BillingCreateCheckoutPostRequestTierEnum._(r'QUANT');

  /// List of all possible values in this [enum][BillingCreateCheckoutPostRequestTierEnum].
  static const values = <BillingCreateCheckoutPostRequestTierEnum>[
    HOBBY,
    PRO,
    QUANT,
  ];

  static BillingCreateCheckoutPostRequestTierEnum? fromJson(dynamic value) => BillingCreateCheckoutPostRequestTierEnumTypeTransformer().decode(value);

  static List<BillingCreateCheckoutPostRequestTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingCreateCheckoutPostRequestTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingCreateCheckoutPostRequestTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BillingCreateCheckoutPostRequestTierEnum] to String,
/// and [decode] dynamic data back to [BillingCreateCheckoutPostRequestTierEnum].
class BillingCreateCheckoutPostRequestTierEnumTypeTransformer {
  factory BillingCreateCheckoutPostRequestTierEnumTypeTransformer() => _instance ??= const BillingCreateCheckoutPostRequestTierEnumTypeTransformer._();

  const BillingCreateCheckoutPostRequestTierEnumTypeTransformer._();

  String encode(BillingCreateCheckoutPostRequestTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BillingCreateCheckoutPostRequestTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BillingCreateCheckoutPostRequestTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOBBY': return BillingCreateCheckoutPostRequestTierEnum.HOBBY;
        case r'PRO': return BillingCreateCheckoutPostRequestTierEnum.PRO;
        case r'QUANT': return BillingCreateCheckoutPostRequestTierEnum.QUANT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BillingCreateCheckoutPostRequestTierEnumTypeTransformer] instance.
  static BillingCreateCheckoutPostRequestTierEnumTypeTransformer? _instance;
}



class BillingCreateCheckoutPostRequestBillingPeriodEnum {
  /// Instantiate a new enum with the provided [value].
  const BillingCreateCheckoutPostRequestBillingPeriodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const monthly = BillingCreateCheckoutPostRequestBillingPeriodEnum._(r'monthly');
  static const annual = BillingCreateCheckoutPostRequestBillingPeriodEnum._(r'annual');

  /// List of all possible values in this [enum][BillingCreateCheckoutPostRequestBillingPeriodEnum].
  static const values = <BillingCreateCheckoutPostRequestBillingPeriodEnum>[
    monthly,
    annual,
  ];

  static BillingCreateCheckoutPostRequestBillingPeriodEnum? fromJson(dynamic value) => BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer().decode(value);

  static List<BillingCreateCheckoutPostRequestBillingPeriodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingCreateCheckoutPostRequestBillingPeriodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingCreateCheckoutPostRequestBillingPeriodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BillingCreateCheckoutPostRequestBillingPeriodEnum] to String,
/// and [decode] dynamic data back to [BillingCreateCheckoutPostRequestBillingPeriodEnum].
class BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer {
  factory BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer() => _instance ??= const BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer._();

  const BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer._();

  String encode(BillingCreateCheckoutPostRequestBillingPeriodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BillingCreateCheckoutPostRequestBillingPeriodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BillingCreateCheckoutPostRequestBillingPeriodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'monthly': return BillingCreateCheckoutPostRequestBillingPeriodEnum.monthly;
        case r'annual': return BillingCreateCheckoutPostRequestBillingPeriodEnum.annual;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer] instance.
  static BillingCreateCheckoutPostRequestBillingPeriodEnumTypeTransformer? _instance;
}


