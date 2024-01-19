import 'dart:convert';

class Ingredient {
  final String code;

  Ingredient({
    required this.code,
  });

  String get name => code.split(" - ").first;

  String get quantity => code.split(" - ").last;

  Ingredient copyWith({
    String? code,
  }) {
    return Ingredient(
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '': code,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      code: map['code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredient.fromJson(String source) =>
      Ingredient.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Ingredient(code: $code)';

  @override
  bool operator ==(covariant Ingredient other) {
    if (identical(this, other)) return true;

    return other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
}
