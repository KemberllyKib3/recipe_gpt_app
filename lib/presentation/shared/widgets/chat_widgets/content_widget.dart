import 'package:flutter/material.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/presentation/shared/widgets/chat_widgets/circular_chip_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/chat_widgets/recipe_content.dart';
import 'package:recipe_gpt/shared/constants.dart';

class ContentWidget extends StatelessWidget {
  final Message message;

  const ContentWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          message.mealPlan!.title!,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularChipWidget(
              text: message.mealPlan!.nDays.toString(),
              typeRecipeInfoEnum: TypeRecipeInfoEnum.nDays,
            ),
            CircularChipWidget(
              text: message.mealPlan!.nMeals.toString(),
              typeRecipeInfoEnum: TypeRecipeInfoEnum.nMeals,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          "Day 1",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.white,
                height: 1,
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          children: message.mealPlan!.recipes
              .map((e) => RecipeContent(recipe: e))
              .toList(),
        ),
      ],
    );
  }
}
