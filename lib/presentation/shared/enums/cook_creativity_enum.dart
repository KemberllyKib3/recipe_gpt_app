enum CookCreativityEnum {
  normal(
      "be creative and convenient! use what's available and convenient, and discard what's not. 🧑🏻‍🍳"),
  creative(
      "get creative with every ingredient! use every single ingredient listed above. surprise me! 🤯");

  String get label => _label;

  final String _label;
  const CookCreativityEnum(this._label);
}
