class RecipeModel {
  final String id;
  final String? title;
  final String? description;
  final String dificulty;
  final int time;
  final Iterable<String> ingredients;
  final Iterable<String> instructions;
  final String tips;
  final bool isFreezeble;
  final int servings;
  final String nutritionFactsId;

  RecipeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dificulty,
    required this.time,
    required this.ingredients,
    required this.instructions,
    required this.tips,
    required this.isFreezeble,
    required this.servings,
    required this.nutritionFactsId,
  });
}
