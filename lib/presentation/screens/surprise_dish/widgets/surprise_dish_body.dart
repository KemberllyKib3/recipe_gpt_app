import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/counter_widget.dart';
import 'package:recipe_gpt/presentation/screens/chat/chat_page.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/utils/widget_functions.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class SurpriseDishBody extends StatefulWidget {
  const SurpriseDishBody({super.key});

  @override
  State<SurpriseDishBody> createState() => _SurpriseDishBodyState();
}

class _SurpriseDishBodyState extends State<SurpriseDishBody> {
  int minutes = 0;
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
                      'say goodbye to recipe hunting and hello to '
                              'a world of personalized culinary inspiration!'
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
                    title: 'time available',
                    subtitle: 'how much time do you have?',
                    setting: CounterWidget.time(
                      number: minutes,
                      onValueChanged: (value) =>
                          setState(() => minutes = value),
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
              WidgetFunctions.push(
                context,
                (context) => const ResponsePage(
                  title: 'surprise dish',
                  typeOfResponse: TypeResponseEnum.recipe,
                  typeCommand: TypeCommandEnum.surpriseDishCommand,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
