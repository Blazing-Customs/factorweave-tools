//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class AlertsRulesPostRequest {
  /// Returns a new [AlertsRulesPostRequest] instance.
  AlertsRulesPostRequest({
    required this.name,
    required this.indicator,
    required this.condition,
    required this.value,
    this.description,
  });

  String name;

  AlertsRulesPostRequestIndicatorEnum indicator;

  AlertsRulesPostRequestConditionEnum condition;

  num value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlertsRulesPostRequest &&
    other.name == name &&
    other.indicator == indicator &&
    other.condition == condition &&
    other.value == value &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (indicator.hashCode) +
    (condition.hashCode) +
    (value.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'AlertsRulesPostRequest[name=$name, indicator=$indicator, condition=$condition, value=$value, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'indicator'] = this.indicator;
      json[r'condition'] = this.condition;
      json[r'value'] = this.value;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [AlertsRulesPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlertsRulesPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlertsRulesPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlertsRulesPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlertsRulesPostRequest(
        name: mapValueOfType<String>(json, r'name')!,
        indicator: AlertsRulesPostRequestIndicatorEnum.fromJson(json[r'indicator'])!,
        condition: AlertsRulesPostRequestConditionEnum.fromJson(json[r'condition'])!,
        value: num.parse('${json[r'value']}'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<AlertsRulesPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertsRulesPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertsRulesPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlertsRulesPostRequest> mapFromJson(dynamic json) {
    final map = <String, AlertsRulesPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlertsRulesPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlertsRulesPostRequest-objects as value to a dart map
  static Map<String, List<AlertsRulesPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlertsRulesPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlertsRulesPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'indicator',
    'condition',
    'value',
  };
}


class AlertsRulesPostRequestIndicatorEnum {
  /// Instantiate a new enum with the provided [value].
  const AlertsRulesPostRequestIndicatorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rsi = AlertsRulesPostRequestIndicatorEnum._(r'rsi');
  static const price = AlertsRulesPostRequestIndicatorEnum._(r'price');
  static const volume = AlertsRulesPostRequestIndicatorEnum._(r'volume');
  static const momentum = AlertsRulesPostRequestIndicatorEnum._(r'momentum');

  /// List of all possible values in this [enum][AlertsRulesPostRequestIndicatorEnum].
  static const values = <AlertsRulesPostRequestIndicatorEnum>[
    rsi,
    price,
    volume,
    momentum,
  ];

  static AlertsRulesPostRequestIndicatorEnum? fromJson(dynamic value) => AlertsRulesPostRequestIndicatorEnumTypeTransformer().decode(value);

  static List<AlertsRulesPostRequestIndicatorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertsRulesPostRequestIndicatorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertsRulesPostRequestIndicatorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlertsRulesPostRequestIndicatorEnum] to String,
/// and [decode] dynamic data back to [AlertsRulesPostRequestIndicatorEnum].
class AlertsRulesPostRequestIndicatorEnumTypeTransformer {
  factory AlertsRulesPostRequestIndicatorEnumTypeTransformer() => _instance ??= const AlertsRulesPostRequestIndicatorEnumTypeTransformer._();

  const AlertsRulesPostRequestIndicatorEnumTypeTransformer._();

  String encode(AlertsRulesPostRequestIndicatorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlertsRulesPostRequestIndicatorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlertsRulesPostRequestIndicatorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'rsi': return AlertsRulesPostRequestIndicatorEnum.rsi;
        case r'price': return AlertsRulesPostRequestIndicatorEnum.price;
        case r'volume': return AlertsRulesPostRequestIndicatorEnum.volume;
        case r'momentum': return AlertsRulesPostRequestIndicatorEnum.momentum;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlertsRulesPostRequestIndicatorEnumTypeTransformer] instance.
  static AlertsRulesPostRequestIndicatorEnumTypeTransformer? _instance;
}



class AlertsRulesPostRequestConditionEnum {
  /// Instantiate a new enum with the provided [value].
  const AlertsRulesPostRequestConditionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const greaterThan = AlertsRulesPostRequestConditionEnum._(r'>');
  static const lessThan = AlertsRulesPostRequestConditionEnum._(r'<');
  static const equal = AlertsRulesPostRequestConditionEnum._(r'=');
  static const crossesAbove = AlertsRulesPostRequestConditionEnum._(r'crosses_above');
  static const crossesBelow = AlertsRulesPostRequestConditionEnum._(r'crosses_below');

  /// List of all possible values in this [enum][AlertsRulesPostRequestConditionEnum].
  static const values = <AlertsRulesPostRequestConditionEnum>[
    greaterThan,
    lessThan,
    equal,
    crossesAbove,
    crossesBelow,
  ];

  static AlertsRulesPostRequestConditionEnum? fromJson(dynamic value) => AlertsRulesPostRequestConditionEnumTypeTransformer().decode(value);

  static List<AlertsRulesPostRequestConditionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlertsRulesPostRequestConditionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlertsRulesPostRequestConditionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlertsRulesPostRequestConditionEnum] to String,
/// and [decode] dynamic data back to [AlertsRulesPostRequestConditionEnum].
class AlertsRulesPostRequestConditionEnumTypeTransformer {
  factory AlertsRulesPostRequestConditionEnumTypeTransformer() => _instance ??= const AlertsRulesPostRequestConditionEnumTypeTransformer._();

  const AlertsRulesPostRequestConditionEnumTypeTransformer._();

  String encode(AlertsRulesPostRequestConditionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlertsRulesPostRequestConditionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlertsRulesPostRequestConditionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'>': return AlertsRulesPostRequestConditionEnum.greaterThan;
        case r'<': return AlertsRulesPostRequestConditionEnum.lessThan;
        case r'=': return AlertsRulesPostRequestConditionEnum.equal;
        case r'crosses_above': return AlertsRulesPostRequestConditionEnum.crossesAbove;
        case r'crosses_below': return AlertsRulesPostRequestConditionEnum.crossesBelow;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlertsRulesPostRequestConditionEnumTypeTransformer] instance.
  static AlertsRulesPostRequestConditionEnumTypeTransformer? _instance;
}


