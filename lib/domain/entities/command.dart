import 'package:recipe_gpt/shared/enums/enums.dart';

class Command {
  final TypeCommandEnum type;
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
  final String? text;
  final String? other;

  bool get isRecipeCommand => type.isRecipeCommand;

  Map<String, dynamic> get substitutions => {
        'initialPhrase': type.label,
        'cuisines': cuisines,
        'preferences': preferences,
        'restrictions': restrictions,
        'creativity': creativity,
        'level': level,
        'time': time,
        'nMealsPerDay': nMealsPerDay,
        'nDays': nDays,
        'ingredients': ingredients,
        'appliances': appliances,
        'text': text,
        'other': other,
      };

  Command({
    required this.type,
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
    this.text,
    this.other,
  });

  factory Command.surpriseDish({
    required List<String> restrictions,
    required String level,
    required int time,
  }) =>
      Command(
        type: TypeCommandEnum.surpriseDishCommand,
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
        type: TypeCommandEnum.fridgeCommand,
        ingredients: ingredients,
        appliances: appliances,
        time: time,
        level: level,
      );

  factory Command.freeText({
    required String text,
  }) =>
      Command(
        type: TypeCommandEnum.freeTextCommand,
        text: text,
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
        type: TypeCommandEnum.mealPlanCommand,
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
        type: TypeCommandEnum.romanticDinnerCommand,
        cuisines: cuisines,
        restrictions: restrictions,
        time: time,
        other: other,
        level: level,
      );
}
