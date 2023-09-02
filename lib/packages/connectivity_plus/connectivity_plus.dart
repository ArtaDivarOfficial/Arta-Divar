// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ConnectivityPlus {
  final String name;
  ConnectivityPlus({
    required this.name,
  });

  ConnectivityPlus copyWith({
    String? name,
  }) {
    return ConnectivityPlus(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ConnectivityPlus.fromMap(Map<String, dynamic> map) {
    return ConnectivityPlus(
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ConnectivityPlus.fromJson(String source) =>
      ConnectivityPlus.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ConnectivityPlus(name: $name)';

  @override
  bool operator ==(covariant ConnectivityPlus other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
