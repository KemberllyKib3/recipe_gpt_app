enum TypeResponseEnum {
  recipe("recipe"),
  mealPlan("mealPlan");

  String get label => _label;

  final String _label;
  const TypeResponseEnum(this._label);
}