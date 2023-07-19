import 'package:recipe_gpt/domain/models/recipe.dart';
import 'package:uuid/uuid.dart';

class MealPlan {
  late String id;
  final String? title;
  final String? description;
  final int? kcalGoal;
  final int? nDays;
  final List<Recipe> recipes;
  final DateTime generatedAt;

  MealPlan({
    required this.id,
    this.title,
    this.description,
    this.kcalGoal,
    this.nDays,
    required this.recipes,
    required this.generatedAt,
  }) {
    assert(title != null || description != null);
    id = const Uuid().v4();
  }
}
