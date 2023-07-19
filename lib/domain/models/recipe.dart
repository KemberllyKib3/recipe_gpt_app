import 'package:recipe_gpt/domain/models/ingredient.dart';
import 'package:uuid/uuid.dart';
import 'package:recipe_gpt/domain/models/nutritional_facts.dart';

class Recipe {
  late String id;
  final String? title;
  final String? description;
  final String dificulty;
  final int time;
  final Map<String, Ingredient> ingredients;
  final Map<int, String> instructions;
  final NutritionalFacts nutritionalFacts;

  Recipe({
    required this.title,
    required this.description,
    required this.dificulty,
    required this.time,
    required this.nutritionalFacts,
    required this.ingredients,
    required this.instructions,
  }) {
    assert(title != null || description != null);
    id = const Uuid().v4();
  }
}
