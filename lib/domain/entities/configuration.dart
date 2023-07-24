import 'package:recipe_gpt/shared/enums/enums.dart';

class Configuration {
  final CookLevelEnum cookLevel;

  Configuration({
    required this.cookLevel,
  });

  Configuration copyWith({
    CookLevelEnum? cookLevel,
  }) {
    return Configuration(
      cookLevel: cookLevel ?? this.cookLevel,
    );
  }
}
