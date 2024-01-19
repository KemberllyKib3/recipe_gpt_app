import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';

class Message {
  final String? text;
  final Recipe? recipe;
  final MealPlan? mealPlan;
  final String? command;
  final DateTime sentAt;
  final TypeSenderEnum sender;
  final bool isError;

  String get toClipboard {
    if (recipe != null) {
      return recipe!.toClipboard;
    } else if (mealPlan != null) {
      return mealPlan!.toClipboard;
    } else {
      return text!;
    }
  }

  Message({
    this.text,
    this.recipe,
    this.mealPlan,
    this.command,
    this.isError = false,
    required this.sentAt,
    required this.sender,
  });

  factory Message.user({
    required String text,
  }) =>
      Message(
        text: text,
        sentAt: DateTime.now(),
        sender: TypeSenderEnum.user,
      );

  factory Message.ai({
    required String text,
    Recipe? recipe,
    MealPlan? mealPlan,
  }) =>
      Message(
        text: text,
        recipe: recipe,
        mealPlan: mealPlan,
        sentAt: DateTime.now(),
        sender: TypeSenderEnum.ai,
      );
}
