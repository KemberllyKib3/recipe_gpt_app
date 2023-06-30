enum TypeCommandEnum {
  fridgeCommand("can you give me a recipe with what I have in my fridge?"),
  mealPlanCommand("can you give me a meal plan?"),
  surpriseDishCommand("can you surprise me with a dish?"),
  romanticDinnerCommand("can you give me a recipe for a romantic dinner?");

  String get label => _label;

  final String _label;
  const TypeCommandEnum(this._label);
}
