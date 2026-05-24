//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of factorweave;

class EmbeddingTickerGet200Response {
  /// Returns a new [EmbeddingTickerGet200Response] instance.
  EmbeddingTickerGet200Response({
    this.ticker,
    this.asOf,
    this.dim,
    this.embedding = const [],
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
  DateTime? asOf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dim;

  List<num> embedding;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmbeddingTickerGet200Response &&
    other.ticker == ticker &&
    other.asOf == asOf &&
    other.dim == dim &&
    _deepEquality.equals(other.embedding, embedding);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ticker == null ? 0 : ticker!.hashCode) +
    (asOf == null ? 0 : asOf!.hashCode) +
    (dim == null ? 0 : dim!.hashCode) +
    (embedding.hashCode);

  @override
  String toString() => 'EmbeddingTickerGet200Response[ticker=$ticker, asOf=$asOf, dim=$dim, embedding=$embedding]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ticker != null) {
      json[r'ticker'] = this.ticker;
    } else {
      json[r'ticker'] = null;
    }
    if (this.asOf != null) {
      json[r'as_of'] = _dateFormatter.format(this.asOf!.toUtc());
    } else {
      json[r'as_of'] = null;
    }
    if (this.dim != null) {
      json[r'dim'] = this.dim;
    } else {
      json[r'dim'] = null;
    }
      json[r'embedding'] = this.embedding;
    return json;
  }

  /// Returns a new [EmbeddingTickerGet200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmbeddingTickerGet200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmbeddingTickerGet200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmbeddingTickerGet200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmbeddingTickerGet200Response(
        ticker: mapValueOfType<String>(json, r'ticker'),
        asOf: mapDateTime(json, r'as_of', r''),
        dim: mapValueOfType<int>(json, r'dim'),
        embedding: json[r'embedding'] is Iterable
            ? (json[r'embedding'] as Iterable).cast<num>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<EmbeddingTickerGet200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmbeddingTickerGet200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmbeddingTickerGet200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmbeddingTickerGet200Response> mapFromJson(dynamic json) {
    final map = <String, EmbeddingTickerGet200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmbeddingTickerGet200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmbeddingTickerGet200Response-objects as value to a dart map
  static Map<String, List<EmbeddingTickerGet200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmbeddingTickerGet200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmbeddingTickerGet200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

