//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class MeKeysPostRequest {
  /// Returns a new [MeKeysPostRequest] instance.
  MeKeysPostRequest({
    this.name,
    this.ttlDays,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Minimum value: 1
  /// Maximum value: 3650
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ttlDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MeKeysPostRequest &&
    other.name == name &&
    other.ttlDays == ttlDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (ttlDays == null ? 0 : ttlDays!.hashCode);

  @override
  String toString() => 'MeKeysPostRequest[name=$name, ttlDays=$ttlDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ttlDays != null) {
      json[r'ttl_days'] = this.ttlDays;
    } else {
      json[r'ttl_days'] = null;
    }
    return json;
  }

  /// Returns a new [MeKeysPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MeKeysPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MeKeysPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MeKeysPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MeKeysPostRequest(
        name: mapValueOfType<String>(json, r'name'),
        ttlDays: mapValueOfType<int>(json, r'ttl_days'),
      );
    }
    return null;
  }

  static List<MeKeysPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MeKeysPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MeKeysPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MeKeysPostRequest> mapFromJson(dynamic json) {
    final map = <String, MeKeysPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MeKeysPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MeKeysPostRequest-objects as value to a dart map
  static Map<String, List<MeKeysPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MeKeysPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MeKeysPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

