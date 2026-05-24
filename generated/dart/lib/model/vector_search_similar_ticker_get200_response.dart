//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class VectorSearchSimilarTickerGet200Response {
  /// Returns a new [VectorSearchSimilarTickerGet200Response] instance.
  VectorSearchSimilarTickerGet200Response({
    this.queryTicker,
    this.queryDate,
    this.neighbors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queryTicker;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? queryDate;

  List<NeighborRow> neighbors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VectorSearchSimilarTickerGet200Response &&
    other.queryTicker == queryTicker &&
    other.queryDate == queryDate &&
    _deepEquality.equals(other.neighbors, neighbors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (queryTicker == null ? 0 : queryTicker!.hashCode) +
    (queryDate == null ? 0 : queryDate!.hashCode) +
    (neighbors.hashCode);

  @override
  String toString() => 'VectorSearchSimilarTickerGet200Response[queryTicker=$queryTicker, queryDate=$queryDate, neighbors=$neighbors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.queryTicker != null) {
      json[r'query_ticker'] = this.queryTicker;
    } else {
      json[r'query_ticker'] = null;
    }
    if (this.queryDate != null) {
      json[r'query_date'] = _dateFormatter.format(this.queryDate!.toUtc());
    } else {
      json[r'query_date'] = null;
    }
      json[r'neighbors'] = this.neighbors;
    return json;
  }

  /// Returns a new [VectorSearchSimilarTickerGet200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VectorSearchSimilarTickerGet200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VectorSearchSimilarTickerGet200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VectorSearchSimilarTickerGet200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VectorSearchSimilarTickerGet200Response(
        queryTicker: mapValueOfType<String>(json, r'query_ticker'),
        queryDate: mapDateTime(json, r'query_date', r''),
        neighbors: NeighborRow.listFromJson(json[r'neighbors']),
      );
    }
    return null;
  }

  static List<VectorSearchSimilarTickerGet200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VectorSearchSimilarTickerGet200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VectorSearchSimilarTickerGet200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VectorSearchSimilarTickerGet200Response> mapFromJson(dynamic json) {
    final map = <String, VectorSearchSimilarTickerGet200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VectorSearchSimilarTickerGet200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VectorSearchSimilarTickerGet200Response-objects as value to a dart map
  static Map<String, List<VectorSearchSimilarTickerGet200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VectorSearchSimilarTickerGet200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VectorSearchSimilarTickerGet200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

