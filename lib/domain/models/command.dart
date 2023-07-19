import 'package:recipe_gpt/shared/enums/enums.dart';

class Command {
  final String? initialPhrase;
  final List<String>? cuisines;
  final List<String>? preferences;
  final List<String>? restrictions;
  final String? creativity;
  final String? level;
  final int? time;
  final int? nMealsPerDay;
  final int? nDays;
  final List<String>? ingredients;
  final List<String>? appliances;
  final String? other;

  bool get isRecipeCommand =>
      initialPhrase == TypeCommandEnum.surpriseDishCommand.label ||
      initialPhrase == TypeCommandEnum.fridgeCommand.label ||
      initialPhrase == TypeCommandEnum.romanticDinnerCommand.label;

  bool get isMealPlanCommand =>
      initialPhrase == TypeCommandEnum.mealPlanCommand.label;

  Command({
    this.initialPhrase,
    this.cuisines,
    this.preferences,
    this.restrictions,
    this.creativity,
    this.level,
    this.time,
    this.nMealsPerDay,
    this.nDays,
    this.ingredients,
    this.appliances,
    this.other,
  });

  factory Command.surpriseDish({
    required List<String> restrictions,
    required String level,
    required int time,
  }) =>
      Command(
        initialPhrase: TypeCommandEnum.surpriseDishCommand.label,
        restrictions: restrictions,
        level: level,
        time: time,
      );

  factory Command.fridge({
    required List<String> ingredients,
    required List<String> appliances,
    required int time,
    required String creativity,
    required String level,
  }) =>
      Command(
        initialPhrase: TypeCommandEnum.fridgeCommand.label,
        ingredients: ingredients,
        appliances: appliances,
        time: time,
        level: level,
      );

  factory Command.freeText({
    required String text,
  }) =>
      Command(
        initialPhrase: text,
      );

  factory Command.mealPlan({
    required int nMealsPerDay,
    required int nDays,
    required int time,
    required List<String> preferences,
    required List<String> restrictions,
    required String level,
  }) =>
      Command(
        initialPhrase: TypeCommandEnum.mealPlanCommand.label,
        nMealsPerDay: nMealsPerDay,
        nDays: nDays,
        time: time,
        preferences: preferences,
        restrictions: restrictions,
        level: level,
      );

  factory Command.romanticDinner({
    required List<String> cuisines,
    required List<String> restrictions,
    required int time,
    required String other,
    required String level,
  }) =>
      Command(
        initialPhrase: TypeCommandEnum.mealPlanCommand.label,
        cuisines: cuisines,
        restrictions: restrictions,
        time: time,
        other: other,
        level: level,
      );
}
