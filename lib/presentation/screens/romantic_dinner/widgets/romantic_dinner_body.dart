import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/counter_widget.dart';
import 'package:recipe_gpt/presentation/screens/response/response_page.dart';
import 'package:recipe_gpt/presentation/screens/romantic_dinner/widgets/multi_text_field_widget.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';
import 'package:recipe_gpt/presentation/shared/utils/widget_functions.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class RomanticDinnerBody extends StatefulWidget {
  const RomanticDinnerBody({super.key});

  @override
  State<RomanticDinnerBody> createState() => _RomanticDinnerBodyState();
}

class _RomanticDinnerBodyState extends State<RomanticDinnerBody> {
  final considerationsController = TextEditingController();

  int minutes = 0;
  List<String> cuisinePreferences = [];
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
                      'elevate your romantic dinner experience! '
                              'enjoy a memorable culinary journey together!'
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
                    title: 'cuisine preferences',
                    subtitle: 'what do you like to eat?',
                    setting: ItemSelectorWidget(
                      items:
                          CuisineTypesEnum.values.map((e) => e.label).toList(),
                      selectedItems: cuisinePreferences,
                      onChanged: (value) =>
                          setState(() => cuisinePreferences = value),
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
                    title: 'other considerations',
                    subtitle: 'anything else to be considered?',
                    setting: MultiTextFieldWidget(
                      controller: considerationsController,
                      maxLines: 4,
                      hint: 'type something to be considered...',
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
              WidgetFunctions.push(
                context,
                (context) => const ResponsePage(
                  title: 'romantic dinner',
                  typeOfResponse: TypeResponseEnum.recipe,
                  typeCommand: TypeCommandEnum.romanticDinnerCommand,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
