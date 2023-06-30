enum CookLevelEnum {
  homeCook("home cook", "kitchen is my domain, I'm a home cook! I enjoy learning and exploring new recipes and techniques to create delicious meals. 🍳"),
  amateurCook("amateur cook", "kitchen is my playground, I'm an amateur cook! I have a passion for learning and discovering new recipes and techniques. 🍽️"),
  masterChef("master chef", "the kitchen is my kingdom, I’m a master chef! challenge me with your suggestions. 🧑🏻‍🍳");

  String get label => _label;

  final String _label;
  final String value;
  const CookLevelEnum(this.value, this._label);
}
