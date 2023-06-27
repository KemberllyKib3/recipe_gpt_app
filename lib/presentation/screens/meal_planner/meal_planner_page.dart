import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/counter_widget.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/enums/food_preferences_enum.dart';
import 'package:recipe_gpt/presentation/shared/enums/food_restrictions_enum.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class MealPlannerPage extends StatefulWidget {
  const MealPlannerPage({super.key});

  @override
  State<MealPlannerPage> createState() => _MealPlannerPageState();
}

class _MealPlannerPageState extends State<MealPlannerPage> {
  int nMeals = 0;
  int nDays = 0;
  int minutes = 0;
  List<String> foodPreferences = [];
  List<String> dietaryRestrictions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'meal planner'),
      body: Column(
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
                        'welcome to meal planner, fill the questions '
                        'down below to get a perfectly fit answer.',
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
                      setting: CounterWidget.integer(
                        number: nMeals,
                        onValueChanged: (value) =>
                            setState(() => nMeals = value),
                      ),
                    ),
                    PromptSettingWidget(
                      title: 'number of days',
                      setting: CounterWidget.integer(
                        number: nDays,
                        maxLimit: 60,
                        onValueChanged: (value) =>
                            setState(() => nDays = value),
                      ),
                    ),
                    PromptSettingWidget(
                      title: 'time available',
                      setting: CounterWidget.time(
                        number: minutes,
                        onValueChanged: (value) =>
                            setState(() => minutes = value),
                      ),
                    ),
                    PromptSettingWidget(
                      title: 'food preferences',
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
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
