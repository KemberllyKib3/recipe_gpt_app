enum TypeRecipeInfoEnum {
  level("difficulty", "chefHat"),
  time("time to cook", "clock"),
  freezed("can be frozen", "ice"),
  servings("number of servings", "plate"),
  nDays("number of days", "calendar"),
  nMeals("number of meals", "knifeFork");

  String get tooltip => _tooltip;

  final String icon;
  final String _tooltip;

  const TypeRecipeInfoEnum(this._tooltip, this.icon);
}
