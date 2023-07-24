import 'package:uuid/uuid.dart';

import 'package:recipe_gpt/domain/entities/ingredient.dart';
import 'package:recipe_gpt/domain/entities/nutrition_facts.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

class Recipe {
  String? id;
  final String? title;
  final String? description;
  final String dificulty;
  final int time;
  final List<Ingredient> ingredients;
  final List<String> instructions;
  final NutritionFacts? nutritionalFacts;

  Recipe({
    String? id,
    required this.title,
    required this.description,
    required this.dificulty,
    required this.time,
    required this.nutritionalFacts,
    required this.ingredients,
    required this.instructions,
  }) {
    assert((title != null || description != null), CreationFailure);
    id = id ?? const Uuid().v4();
  }

  Recipe copyWith({
    String? title,
    String? description,
    String? dificulty,
    int? time,
    List<Ingredient>? ingredients,
    List<String>? instructions,
    NutritionFacts? nutritionalFacts,
  }) {
    return Recipe(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      dificulty: dificulty ?? this.dificulty,
      time: time ?? this.time,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      nutritionalFacts: nutritionalFacts ?? this.nutritionalFacts,
    );
  }
}
