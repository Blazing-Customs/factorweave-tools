//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class FeatureRow {
  /// Returns a new [FeatureRow] instance.
  FeatureRow({
    this.ticker,
    this.date,
    this.rsi,
    this.mom,
    this.meanrev,
    this.rv20,
    this.betaSpy,
    this.compScore,
    this.qCompScore,
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

  num? rsi;

  /// Momentum
  num? mom;

  num? meanrev;

  /// 20-day realized volatility
  num? rv20;

  num? betaSpy;

  num? compScore;

  /// Cross-sectional percentile (0–100)
  int? qCompScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FeatureRow &&
    other.ticker == ticker &&
    other.date == date &&
    other.rsi == rsi &&
    other.mom == mom &&
    other.meanrev == meanrev &&
    other.rv20 == rv20 &&
    other.betaSpy == betaSpy &&
    other.compScore == compScore &&
    other.qCompScore == qCompScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ticker == null ? 0 : ticker!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (rsi == null ? 0 : rsi!.hashCode) +
    (mom == null ? 0 : mom!.hashCode) +
    (meanrev == null ? 0 : meanrev!.hashCode) +
    (rv20 == null ? 0 : rv20!.hashCode) +
    (betaSpy == null ? 0 : betaSpy!.hashCode) +
    (compScore == null ? 0 : compScore!.hashCode) +
    (qCompScore == null ? 0 : qCompScore!.hashCode);

  @override
  String toString() => 'FeatureRow[ticker=$ticker, date=$date, rsi=$rsi, mom=$mom, meanrev=$meanrev, rv20=$rv20, betaSpy=$betaSpy, compScore=$compScore, qCompScore=$qCompScore]';

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
    if (this.rsi != null) {
      json[r'rsi'] = this.rsi;
    } else {
      json[r'rsi'] = null;
    }
    if (this.mom != null) {
      json[r'mom'] = this.mom;
    } else {
      json[r'mom'] = null;
    }
    if (this.meanrev != null) {
      json[r'meanrev'] = this.meanrev;
    } else {
      json[r'meanrev'] = null;
    }
    if (this.rv20 != null) {
      json[r'rv_20'] = this.rv20;
    } else {
      json[r'rv_20'] = null;
    }
    if (this.betaSpy != null) {
      json[r'beta_spy'] = this.betaSpy;
    } else {
      json[r'beta_spy'] = null;
    }
    if (this.compScore != null) {
      json[r'comp_score'] = this.compScore;
    } else {
      json[r'comp_score'] = null;
    }
    if (this.qCompScore != null) {
      json[r'q_comp_score'] = this.qCompScore;
    } else {
      json[r'q_comp_score'] = null;
    }
    return json;
  }

  /// Returns a new [FeatureRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FeatureRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FeatureRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FeatureRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FeatureRow(
        ticker: mapValueOfType<String>(json, r'ticker'),
        date: mapDateTime(json, r'date', r''),
        rsi: json[r'rsi'] == null
            ? null
            : num.parse('${json[r'rsi']}'),
        mom: json[r'mom'] == null
            ? null
            : num.parse('${json[r'mom']}'),
        meanrev: json[r'meanrev'] == null
            ? null
            : num.parse('${json[r'meanrev']}'),
        rv20: json[r'rv_20'] == null
            ? null
            : num.parse('${json[r'rv_20']}'),
        betaSpy: json[r'beta_spy'] == null
            ? null
            : num.parse('${json[r'beta_spy']}'),
        compScore: json[r'comp_score'] == null
            ? null
            : num.parse('${json[r'comp_score']}'),
        qCompScore: mapValueOfType<int>(json, r'q_comp_score'),
      );
    }
    return null;
  }

  static List<FeatureRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FeatureRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FeatureRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FeatureRow> mapFromJson(dynamic json) {
    final map = <String, FeatureRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FeatureRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FeatureRow-objects as value to a dart map
  static Map<String, List<FeatureRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FeatureRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FeatureRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

