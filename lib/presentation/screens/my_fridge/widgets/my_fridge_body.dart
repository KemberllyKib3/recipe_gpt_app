import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/counter_widget.dart';
import 'package:recipe_gpt/presentation/screens/my_fridge/widgets/fridge_text_field_widget.dart';
import 'package:recipe_gpt/presentation/screens/chat/chat_page.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/utils/widget_functions.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selecteds_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class MyFridgeBody extends StatefulWidget {
  const MyFridgeBody({super.key});

  @override
  State<MyFridgeBody> createState() => _MyFridgeBodyState();
}

class _MyFridgeBodyState extends State<MyFridgeBody> {
  List<String> ingredients = [];
  List<String> appliances = [];
  String creativity = '';
  int minutes = 0;

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
                      'cook smarter, not harder! get meal '
                      'suggestions based on what\'s in your own kitchen.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.white),
                    ),
                  ),
                  const Divider(color: AppColors.white),
                  PromptSettingWidget(
                    title: 'there is in my fridge',
                    subtitle: 'what ingredients do you have?',
                    setting: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FridgeTextFieldWidget(
                          onAddPressed: (value) {
                            setState(() => ingredients.add(value));
                          },
                        ),
                        const SizedBox(height: 10),
                        ItemSelectedsWidget(
                          items: ingredients,
                          onDelete: (value) {
                            setState(() => ingredients.remove(value));
                          },
                        ),
                      ],
                    ),
                  ),
                  PromptSettingWidget(
                    title: 'kitchen appliances',
                    subtitle: 'what appliances do you have?',
                    setting: ItemSelectorWidget(
                      items: KitchenAppliancesEnum.values
                          .map((e) => e.label)
                          .toList(),
                      selectedItems: appliances,
                      onChanged: (value) => setState(() => appliances = value),
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
                    title: 'creativity mode',
                    subtitle: 'how creative do you want to be?',
                    setting: ItemSelectorWidget.unique(
                      isExpandable: true,
                      items: CookCreativityEnum.values
                          .map((e) => e.label)
                          .toList(),
                      selectedItems: [creativity],
                      onChanged: (value) =>
                          setState(() => creativity = value.first),
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
                  title: 'what do I have in my fridge?',
                  typeOfResponse: TypeResponseEnum.recipe,
                  typeCommand: TypeCommandEnum.fridgeCommand,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
