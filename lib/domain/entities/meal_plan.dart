import 'package:uuid/uuid.dart';

import 'package:recipe_gpt/domain/entities/recipe.dart';

class MealPlan {
  String? id;
  final String? title;
  final String? description;
  final int? kcalGoal;
  final int? nDays;
  final int? nMeals;
  final List<Recipe> recipes;
  final DateTime generatedAt;

  MealPlan({
    this.id,
    this.title,
    this.description,
    this.kcalGoal,
    this.nDays,
    this.nMeals,
    required this.recipes,
    required this.generatedAt,
  }) {
    assert(title != null || description != null);
    id = id ?? const Uuid().v4();
  }

  MealPlan copyWith({
    String? title,
    String? description,
    int? kcalGoal,
    int? nDays,
    int? nMeals,
    List<Recipe>? recipes,
    DateTime? generatedAt,
  }) {
    return MealPlan(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      kcalGoal: kcalGoal ?? this.kcalGoal,
      nDays: nDays ?? this.nDays,
      nMeals: nMeals ?? this.nMeals,
      recipes: recipes ?? this.recipes,
      generatedAt: generatedAt ?? this.generatedAt,
    );
  }
}
