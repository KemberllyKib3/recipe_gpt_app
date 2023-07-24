class Ingredient {
  final String code;

  Ingredient({
    required this.code,
  });

  String get name => code.split("::").first;

  String get quantity => code.split("::").last;
}
