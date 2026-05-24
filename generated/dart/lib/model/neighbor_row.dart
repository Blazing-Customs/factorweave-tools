//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class NeighborRow {
  /// Returns a new [NeighborRow] instance.
  NeighborRow({
    this.ticker,
    this.date,
    this.rank,
    this.score,
    this.features,
    this.labels = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticker;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FeatureRow? features;

  Map<String, Object> labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NeighborRow &&
    other.ticker == ticker &&
    other.date == date &&
    other.rank == rank &&
    other.score == score &&
    other.features == features &&
    _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ticker == null ? 0 : ticker!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (features == null ? 0 : features!.hashCode) +
    (labels.hashCode);

  @override
  String toString() => 'NeighborRow[ticker=$ticker, date=$date, rank=$rank, score=$score, features=$features, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ticker != null) {
      json[r'ticker'] = this.ticker;
    } else {
      json[r'ticker'] = null;
    }
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.features != null) {
      json[r'features'] = this.features;
    } else {
      json[r'features'] = null;
    }
      json[r'labels'] = this.labels;
    return json;
  }

  /// Returns a new [NeighborRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NeighborRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NeighborRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NeighborRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NeighborRow(
        ticker: mapValueOfType<String>(json, r'ticker'),
        date: mapDateTime(json, r'date', r''),
        rank: mapValueOfType<int>(json, r'rank'),
        score: num.parse('${json[r'score']}'),
        features: FeatureRow.fromJson(json[r'features']),
        labels: mapCastOfType<String, Object>(json, r'labels') ?? const {},
      );
    }
    return null;
  }

  static List<NeighborRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NeighborRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NeighborRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NeighborRow> mapFromJson(dynamic json) {
    final map = <String, NeighborRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NeighborRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NeighborRow-objects as value to a dart map
  static Map<String, List<NeighborRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NeighborRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NeighborRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

