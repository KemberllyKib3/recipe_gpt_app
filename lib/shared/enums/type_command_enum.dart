import 'package:recipe_gpt/presentation/shared/widgets/assets.dart';

enum TypeCommandEnum {
  fridgeCommand("can you give me a recipe with what I have in my fridge?"),
  mealPlanCommand("can you give me a meal plan?"),
  surpriseDishCommand("can you surprise me with a dish?"),
  romanticDinnerCommand("can you give me a recipe for a romantic dinner?"),
  freeTextCommand("");

  String get label => _label;

  String get scriptPath {
    switch (this) {
      case TypeCommandEnum.fridgeCommand:
        return Assets.fridgeCommand;
      case TypeCommandEnum.mealPlanCommand:
        return Assets.mealPlanCommand;
      case TypeCommandEnum.surpriseDishCommand:
        return Assets.surpriseDishCommand;
      case TypeCommandEnum.romanticDinnerCommand:
        return Assets.romanticDinnerCommand;
      default:
        return "";
    }
  }

  final String _label;
  const TypeCommandEnum(this._label);
}
