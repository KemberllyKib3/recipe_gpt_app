class NutritionFactsModel {
  final String recipeId;
  final double calories;
  final double fat;
  final double carbohydrates;
  final double sugar;
  final double protein;

  NutritionFactsModel({
    required this.recipeId,
    required this.calories,
    required this.fat,
    required this.carbohydrates,
    required this.sugar,
    required this.protein,
  });
}
