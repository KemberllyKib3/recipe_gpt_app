class MealPlanModel {
  final String id;
  final String title;
  final String? description;
  final int nDays;
  final int nMeals;
  final Iterable<String> recipeIds;
  final DateTime generatedAt;

  MealPlanModel({
    required this.id,
    required this.title,
    this.description,
    required this.nDays,
    required this.nMeals,
    required this.recipeIds,
    required this.generatedAt,
  });
}
