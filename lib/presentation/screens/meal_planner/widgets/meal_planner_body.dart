import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/counter_widget.dart';
import 'package:recipe_gpt/presentation/screens/response/response_page.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/enums/enums.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class MealPlannerBody extends StatefulWidget {
  const MealPlannerBody({super.key});

  @override
  State<MealPlannerBody> createState() => _MealPlannerBodyState();
}

class _MealPlannerBodyState extends State<MealPlannerBody> {
  int nMeals = 0;
  int nDays = 0;
  int minutes = 0;
  List<String> foodPreferences = [];
  List<String> dietaryRestrictions = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'personalized meal planning made easy! set your '
                              'preferences below to get started. Bon appétit!'
                          .toLowerCase(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.white),
                    ),
                  ),
                  const Divider(color: AppColors.white),
                  PromptSettingWidget(
                    title: 'number of meals per day',
                    subtitle: 'how many meals do you eat per day?',
                    setting: CounterWidget.integer(
                      number: nMeals,
                      onValueChanged: (value) => setState(() => nMeals = value),
                    ),
                  ),
                  PromptSettingWidget(
                    title: 'number of days',
                    subtitle: 'how many days do you want to plan for?',
                    setting: CounterWidget.integer(
                      number: nDays,
                      maxLimit: 30,
                      onValueChanged: (value) => setState(() => nDays = value),
                    ),
                  ),
                  PromptSettingWidget(
                    title: 'time available',
                    subtitle: 'how much time do you have?',
                    setting: CounterWidget.time(
                      number: minutes,
                      onValueChanged: (value) =>
                          setState(() => minutes = value),
                    ),
                  ),
                  PromptSettingWidget(
                    title: 'food preferences',
                    subtitle: 'what do you prefer?',
                    setting: ItemSelectorWidget(
                      items: FoodPreferencesEnum.values
                          .map((e) => e.label)
                          .toList(),
                      selectedItems: foodPreferences,
                      onChanged: (value) =>
                          setState(() => foodPreferences = value),
                    ),
                  ),
                  PromptSettingWidget(
                    title: 'dietary restrictions',
                    subtitle:
                        'are you on a diet or do you have anything you can\'t eat?',
                    setting: ItemSelectorWidget(
                      items: DietaryRestrictionsEnum.values
                          .map((e) => e.label)
                          .toList(),
                      selectedItems: dietaryRestrictions,
                      onChanged: (value) =>
                          setState(() => dietaryRestrictions = value),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: ButtonWidget.white(
            label: 'launch',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResponsePage(
                    title: 'meal planner',
                    typeOfResponse: TypeResponseEnum.mealPlan,
                    typeCommand: TypeCommandEnum.mealPlanCommand,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
