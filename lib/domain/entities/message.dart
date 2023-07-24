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

  Message({
    this.text,
    this.recipe,
    this.mealPlan,
    this.command,
    this.isError = false,
    required this.sentAt,
    required this.sender,
  }) {
    assert(sender == TypeSenderEnum.user && (command != null || text != null));
    assert(sender == TypeSenderEnum.ai &&
        (recipe != null || mealPlan != null || text != null));
  }

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
