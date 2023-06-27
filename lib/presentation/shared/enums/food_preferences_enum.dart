enum FoodPreferencesEnum {
  beef("beef"),
  chicken("chicken"),
  seafood("seafood"),
  tofu("tofu"),
  pork("pork"),
  dairy("dairy"),
  grains("grains"),
  nuts("nuts"),
  vegetables("vegetables"),
  legumes("legumes"),
  fruits("fruits"),
  quinoa("quinoa"),
  rice("rice"),
  pasta("pasta"),
  bread("bread"),
  couscous("couscous"),
  tortillas("tortillas");

  String get label => _label;

  final String _label;
  const FoodPreferencesEnum(this._label);
}
