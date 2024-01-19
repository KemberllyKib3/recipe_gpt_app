import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import 'package:recipe_gpt/domain/entities/recipe.dart';

class MealPlan {
  String? id;
  final String? title;
  final String? description;
  final int? nDays;
  final int? nMeals;
  final List<Recipe> recipes;
  final DateTime generatedAt;

  MealPlan({
    this.id,
    this.title,
    this.description,
    this.nDays,
    this.nMeals,
    required this.recipes,
    required this.generatedAt,
  }) {
    assert(title != null || description != null);
    id = id ?? const Uuid().v4();
  }

  String get toClipboard {
    final Map<String, dynamic> map = <String, dynamic>{
      'title': title,
      'description': description,
      'nDays': nDays,
      'nMeals': nMeals,
      'recipes': recipes.map((x) => x.toMap()).toList(),
      'generatedAt': generatedAt.millisecondsSinceEpoch,
    };
    return jsonEncode(map);
  }

  MealPlan copyWith({
    String? id,
    String? title,
    String? description,
    int? kcalGoal,
    int? nDays,
    int? nMeals,
    List<Recipe>? recipes,
    DateTime? generatedAt,
  }) {
    return MealPlan(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      nDays: nDays ?? this.nDays,
      nMeals: nMeals ?? this.nMeals,
      recipes: recipes ?? this.recipes,
      generatedAt: generatedAt ?? this.generatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'nDays': nDays,
      'nMeals': nMeals,
      'recipes': recipes.map((x) => x.toMap()).toList(),
      'generatedAt': generatedAt.millisecondsSinceEpoch,
    };
  }

  factory MealPlan.fromMap(Map<String, dynamic> map) {
    return MealPlan(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      nDays: map['nDays'] != null ? map['nDays'] as int : null,
      nMeals: map['nMeals'] != null ? map['nMeals'] as int : null,
      recipes: List<Recipe>.from(
        (map['meals'] as List<Map<String, dynamic>>).map<Recipe>(
          (x) => Recipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      generatedAt:
          DateTime.fromMillisecondsSinceEpoch(map['generatedAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory MealPlan.fromJson(String source) =>
      MealPlan.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MealPlan(id: $id, title: $title, description: $description, nDays: $nDays, nMeals: $nMeals, recipes: $recipes, generatedAt: $generatedAt)';
  }

  @override
  bool operator ==(covariant MealPlan other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.nDays == nDays &&
        other.nMeals == nMeals &&
        listEquals(other.recipes, recipes) &&
        other.generatedAt == generatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        nDays.hashCode ^
        nMeals.hashCode ^
        recipes.hashCode ^
        generatedAt.hashCode;
  }

  Map<String, dynamic> responseJson = {
    "meal_plan": "Brazilian Delights",
    "n_days": 1,
    "meals_per_day": 1,
    "meals": [
      {
        "day": "Day 1",
        "recipes": [
          {
            "title": "Mediterranean Quinoa Salad",
            "description":
                "A delightful and nutritious Mediterranean-inspired quinoa salad.",
            "dificulty": "Easy",
            "time": "25 minutes",
            "ingredients": [
              "Quinoa - 1 cup, rinsed and cooked according to package instructions",
              "Cucumber - 1 medium, diced",
              "Cherry tomatoes - 1 cup, halved",
              "Kalamata olives - 1/4 cup, pitted and halved",
              "Red onion - 1/4 cup, finely chopped",
              "Fresh parsley - 1/4 cup, chopped",
              "Fresh mint - 1/4 cup, chopped",
              "Feta cheese - 1/2 cup, crumbled",
              "Lemon juice - 2 tablespoons",
              "Extra-virgin olive oil - 2 tablespoons",
              "Minced garlic - 1 clove",
              "Dried oregano - 1 teaspoon",
              "Salt and pepper - To taste"
            ],
            "instructions": [
              "In a large mixing bowl, combine cooked quinoa, diced cucumber, halved cherry tomatoes, halved Kalamata olives, chopped red onion, chopped fresh parsley, and chopped fresh mint.",
              "In a small bowl, whisk together lemon juice, extra-virgin olive oil, minced garlic, dried oregano, salt, and pepper to make the dressing.",
              "Pour the dressing over the salad ingredients and toss gently to combine.",
              "Add crumbled feta cheese to the salad and toss again to distribute the flavors.",
              "Adjust seasoning with salt and pepper if needed.",
              "Serve the Mediterranean Quinoa Salad chilled or at room temperature.",
              "Enjoy this refreshing and healthy quinoa salad!"
            ],
            "nutrition_facts": {
              "calories": 350,
              "fat": 14,
              "carbohydrates": 45,
              "sugar": 4,
              "protein": 12
            },
            "servings": 4,
            "tips_suggestions":
                "This Mediterranean Quinoa Salad is a wonderful and satisfying dish on its own, but you can also add grilled chicken or chickpeas for extra protein. To save time, you can cook the quinoa ahead and store it in the refrigerator. This salad makes a great meal prep option and can be packed for a healthy lunch or light dinner. For a burst of freshness, add a squeeze of lemon just before serving.",
            "storage_organization": "Refrigerate in an airtight container.",
            "isFreezeble": false
          }
        ]
      }
    ]
  };
}
