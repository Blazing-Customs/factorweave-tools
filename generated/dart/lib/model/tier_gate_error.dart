//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class TierGateError {
  /// Returns a new [TierGateError] instance.
  TierGateError({
    this.detail,
    this.yourTier,
    this.requiredTier,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detail;

  TierGateErrorYourTierEnum? yourTier;

  TierGateErrorRequiredTierEnum? requiredTier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TierGateError &&
    other.detail == detail &&
    other.yourTier == yourTier &&
    other.requiredTier == requiredTier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (detail == null ? 0 : detail!.hashCode) +
    (yourTier == null ? 0 : yourTier!.hashCode) +
    (requiredTier == null ? 0 : requiredTier!.hashCode);

  @override
  String toString() => 'TierGateError[detail=$detail, yourTier=$yourTier, requiredTier=$requiredTier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.yourTier != null) {
      json[r'your_tier'] = this.yourTier;
    } else {
      json[r'your_tier'] = null;
    }
    if (this.requiredTier != null) {
      json[r'required_tier'] = this.requiredTier;
    } else {
      json[r'required_tier'] = null;
    }
    return json;
  }

  /// Returns a new [TierGateError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TierGateError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TierGateError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TierGateError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TierGateError(
        detail: mapValueOfType<String>(json, r'detail'),
        yourTier: TierGateErrorYourTierEnum.fromJson(json[r'your_tier']),
        requiredTier: TierGateErrorRequiredTierEnum.fromJson(json[r'required_tier']),
      );
    }
    return null;
  }

  static List<TierGateError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TierGateError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TierGateError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TierGateError> mapFromJson(dynamic json) {
    final map = <String, TierGateError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TierGateError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TierGateError-objects as value to a dart map
  static Map<String, List<TierGateError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TierGateError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TierGateError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TierGateErrorYourTierEnum {
  /// Instantiate a new enum with the provided [value].
  const TierGateErrorYourTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FREE = TierGateErrorYourTierEnum._(r'FREE');
  static const HOBBY = TierGateErrorYourTierEnum._(r'HOBBY');
  static const PRO = TierGateErrorYourTierEnum._(r'PRO');
  static const QUANT = TierGateErrorYourTierEnum._(r'QUANT');

  /// List of all possible values in this [enum][TierGateErrorYourTierEnum].
  static const values = <TierGateErrorYourTierEnum>[
    FREE,
    HOBBY,
    PRO,
    QUANT,
  ];

  static TierGateErrorYourTierEnum? fromJson(dynamic value) => TierGateErrorYourTierEnumTypeTransformer().decode(value);

  static List<TierGateErrorYourTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TierGateErrorYourTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TierGateErrorYourTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TierGateErrorYourTierEnum] to String,
/// and [decode] dynamic data back to [TierGateErrorYourTierEnum].
class TierGateErrorYourTierEnumTypeTransformer {
  factory TierGateErrorYourTierEnumTypeTransformer() => _instance ??= const TierGateErrorYourTierEnumTypeTransformer._();

  const TierGateErrorYourTierEnumTypeTransformer._();

  String encode(TierGateErrorYourTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TierGateErrorYourTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TierGateErrorYourTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FREE': return TierGateErrorYourTierEnum.FREE;
        case r'HOBBY': return TierGateErrorYourTierEnum.HOBBY;
        case r'PRO': return TierGateErrorYourTierEnum.PRO;
        case r'QUANT': return TierGateErrorYourTierEnum.QUANT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TierGateErrorYourTierEnumTypeTransformer] instance.
  static TierGateErrorYourTierEnumTypeTransformer? _instance;
}



class TierGateErrorRequiredTierEnum {
  /// Instantiate a new enum with the provided [value].
  const TierGateErrorRequiredTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOBBY = TierGateErrorRequiredTierEnum._(r'HOBBY');
  static const PRO = TierGateErrorRequiredTierEnum._(r'PRO');
  static const QUANT = TierGateErrorRequiredTierEnum._(r'QUANT');

  /// List of all possible values in this [enum][TierGateErrorRequiredTierEnum].
  static const values = <TierGateErrorRequiredTierEnum>[
    HOBBY,
    PRO,
    QUANT,
  ];

  static TierGateErrorRequiredTierEnum? fromJson(dynamic value) => TierGateErrorRequiredTierEnumTypeTransformer().decode(value);

  static List<TierGateErrorRequiredTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TierGateErrorRequiredTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TierGateErrorRequiredTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TierGateErrorRequiredTierEnum] to String,
/// and [decode] dynamic data back to [TierGateErrorRequiredTierEnum].
class TierGateErrorRequiredTierEnumTypeTransformer {
  factory TierGateErrorRequiredTierEnumTypeTransformer() => _instance ??= const TierGateErrorRequiredTierEnumTypeTransformer._();

  const TierGateErrorRequiredTierEnumTypeTransformer._();

  String encode(TierGateErrorRequiredTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TierGateErrorRequiredTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TierGateErrorRequiredTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOBBY': return TierGateErrorRequiredTierEnum.HOBBY;
        case r'PRO': return TierGateErrorRequiredTierEnum.PRO;
        case r'QUANT': return TierGateErrorRequiredTierEnum.QUANT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TierGateErrorRequiredTierEnumTypeTransformer] instance.
  static TierGateErrorRequiredTierEnumTypeTransformer? _instance;
}


