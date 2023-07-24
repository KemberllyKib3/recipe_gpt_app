class RecipeModel {
  final String id;
  final String? title;
  final String? description;
  final String dificulty;
  final int time;
  final Iterable<String> ingredients;
  final Iterable<String> instructions;
  final String tipsSuggestions;
  final String nutritionalFactsId;

  RecipeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dificulty,
    required this.time,
    required this.ingredients,
    required this.instructions,
    required this.tipsSuggestions,
    required this.nutritionalFactsId,
  });
}
