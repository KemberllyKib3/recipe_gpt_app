import 'package:flutter/material.dart';

import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/presentation/shared/widgets/chat_widgets/circular_chip_widget.dart';
import 'package:recipe_gpt/shared/constants.dart';

class RecipeContent extends StatelessWidget {
  final Recipe recipe;

  const RecipeContent({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Recipe: ",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text(
          recipe.title!,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularChipWidget(
              text: recipe.dificulty,
              typeRecipeInfoEnum: TypeRecipeInfoEnum.level,
            ),
            CircularChipWidget(
              text: "${recipe.time} min",
              typeRecipeInfoEnum: TypeRecipeInfoEnum.time,
            ),
            CircularChipWidget(
              text: recipe.isFreezeble ? "yes" : "no",
              typeRecipeInfoEnum: TypeRecipeInfoEnum.freezed,
            ),
            CircularChipWidget(
              text: "${recipe.servings}",
              typeRecipeInfoEnum: TypeRecipeInfoEnum.servings,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          "Ingredients:",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Column(
          children: recipe.ingredients
              .map(
                (ingredient) => Text(
                  "• ${ingredient.name} - ${ingredient.quantity}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 10),
        Text(
          "Intructions:",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Column(
          children: recipe.instructions.map((instruction) {
            int index = recipe.instructions.indexOf(instruction) + 1;
            return Text(
              "$index. $instruction",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        Text(
          "Tips and Suggestions:",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Text(
          recipe.tips,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(height: 10),
        Text(
          "Nutrition Facts:",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Column(children: [
          Text(
            'Calories: ${recipe.nutritionFacts!.calories}'
            'Protein: ${recipe.nutritionFacts!.protein}'
            'Carbohydrates: ${recipe.nutritionFacts!.carbohydrates}'
            'Fat: ${recipe.nutritionFacts!.fat}'
            'Sugar: ${recipe.nutritionFacts!.sugar}',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ]),
      ],
    );
  }
}
