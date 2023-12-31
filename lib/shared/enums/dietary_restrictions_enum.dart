enum DietaryRestrictionsEnum {
  vegetarian("vegetarian"),
  vegan("vegan"),
  keto("keto"),
  paleo("paleo"),
  porkFree("pork free"),
  redMeatFree("red meat free"),
  gluttenFree("glutten free"),
  dairyFree("dairy free"),
  nutFree("nut free"),
  shellfishFree("shellfish free"),
  soyFree("soy free"),
  eggFree("egg free"),
  lowSugar("low sugar"),
  lowSodium("low sodium"),
  lowCarb("low carb");

  String get label => _label;

  final String _label;
  const DietaryRestrictionsEnum(this._label);
}
