import 'dart:convert';

class NutritionFacts {
  final String recipeId;
  final double calories;
  final double fat;
  final double carbohydrates;
  final double sugar;
  final double protein;

  NutritionFacts({
    required this.recipeId,
    required this.calories,
    required this.fat,
    required this.carbohydrates,
    required this.sugar,
    required this.protein,
  });

  NutritionFacts copyWith({
    String? recipeId,
    double? calories,
    double? fat,
    double? carbohydrates,
    double? sugar,
    double? protein,
  }) {
    return NutritionFacts(
      recipeId: recipeId ?? this.recipeId,
      calories: calories ?? this.calories,
      fat: fat ?? this.fat,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      sugar: sugar ?? this.sugar,
      protein: protein ?? this.protein,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recipeId': recipeId,
      'calories': calories,
      'fat': fat,
      'carbohydrates': carbohydrates,
      'sugar': sugar,
      'protein': protein,
    };
  }

  factory NutritionFacts.fromMap(Map<String, dynamic> map) {
    return NutritionFacts(
      recipeId: map['recipeId'] as String,
      calories: map['calories'] as double,
      fat: map['fat'] as double,
      carbohydrates: map['carbohydrates'] as double,
      sugar: map['sugar'] as double,
      protein: map['protein'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory NutritionFacts.fromJson(String source) =>
      NutritionFacts.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NutritionFacts(recipeId: $recipeId, calories: $calories, fat: $fat, carbohydrates: $carbohydrates, sugar: $sugar, protein: $protein)';
  }

  @override
  bool operator ==(covariant NutritionFacts other) {
    if (identical(this, other)) return true;

    return other.recipeId == recipeId &&
        other.calories == calories &&
        other.fat == fat &&
        other.carbohydrates == carbohydrates &&
        other.sugar == sugar &&
        other.protein == protein;
  }

  @override
  int get hashCode {
    return recipeId.hashCode ^
        calories.hashCode ^
        fat.hashCode ^
        carbohydrates.hashCode ^
        sugar.hashCode ^
        protein.hashCode;
  }
}
