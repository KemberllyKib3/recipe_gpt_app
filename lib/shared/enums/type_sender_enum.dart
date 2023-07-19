enum TypeSenderEnum {
  user("user"),
  ai("artificial intelligence");

  String get label => _label;

  final String _label;
  const TypeSenderEnum(this._label);
}
