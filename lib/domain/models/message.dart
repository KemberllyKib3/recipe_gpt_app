import 'package:recipe_gpt/domain/models/models.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';

class Message {
  final String id;
  final String? text;
  final Recipe? recipe;
  final MealPlan? mealPlan;
  final String? command;
  final DateTime sentAt;
  final TypeSenderEnum sender;
  final bool isError;

  Message({
    required this.id,
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
}
