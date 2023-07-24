import 'package:recipe_gpt/data/models/models.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/shared/constants.dart';

extension ParseConfiguration on ConfigurationModel? {
  Configuration get parse => Configuration(
        cookLevel: CookLevelEnum.values
            .firstWhere((element) => element.name == this?.cookLevel),
      );
}

extension ParseUser on UserModel? {
  User get parse => User(
        id: this!.id,
        firstName: this!.firstName,
        lastName: this!.lastName,
        email: this!.email,
      );
}

extension ParseRecipe on RecipeModel? {
  Recipe get parse => Recipe(
        id: this!.id,
        title: this!.title,
        description: this!.description,
        dificulty: this!.dificulty,
        time: this!.time,
        instructions: this!.instructions.toList(),
        ingredients: this!.ingredients.map((e) => Ingredient(code: e)).toList(),
        nutritionalFacts: null,
      );
}

extension ParseNutritionFacts on NutritionFactsModel? {
  NutritionFacts get parse => NutritionFacts(
        recipeId: this!.recipeId,
        calories: this!.calories,
        carbohydrates: this!.carbohydrates,
        fat: this!.fat,
        protein: this!.protein,
        sugar: this!.sugar,
      );
}

extension ParseMealPlan on MealPlanModel? {
  MealPlan get parse => MealPlan(
        id: this!.id,
        title: this!.title,
        description: this!.description,
        kcalGoal: this!.kcalGoal,
        nDays: this!.nDays,
        nMeals: this!.nMeals,
        recipes: [],
        generatedAt: this!.generatedAt,
      );
}
