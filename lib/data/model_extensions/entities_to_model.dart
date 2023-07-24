import 'package:recipe_gpt/data/models/models.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';

extension ParseConfigurationModel on Configuration? {
  ConfigurationModel get parse => ConfigurationModel(
        cookLevel: this!.cookLevel.name,
      );
}

extension ParseUserModel on User? {
  UserModel get parse => UserModel(
        id: this!.id,
        firstName: this!.firstName,
        lastName: this!.lastName,
        email: this!.email,
      );
}

extension ParseRecipeModel on Recipe? {
  RecipeModel get parse => RecipeModel(
        tipsSuggestions: "",
        id: this!.id!,
        title: this!.title,
        description: this!.description,
        dificulty: this!.dificulty,
        time: this!.time,
        instructions: this!.instructions,
        ingredients: this!.ingredients.map((e) => e.code),
        nutritionalFactsId: this!.nutritionalFacts!.recipeId,
      );
}

extension ParseNutritionFactsModel on NutritionFacts? {
  NutritionFactsModel get parse => NutritionFactsModel(
        recipeId: this!.recipeId,
        calories: this!.calories,
        carbohydrates: this!.carbohydrates,
        fat: this!.fat,
        protein: this!.protein,
        sugar: this!.sugar,
      );
}

extension ParseMealPlanModel on MealPlan? {
  MealPlanModel get parse => MealPlanModel(
        id: this!.id!,
        title: this!.title!,
        description: this!.description,
        kcalGoal: this!.kcalGoal!,
        nDays: this!.nDays!,
        nMeals: this!.nMeals!,
        recipeIds: this!.recipes.map((e) => e.id!),
        generatedAt: this!.generatedAt,
      );
}
