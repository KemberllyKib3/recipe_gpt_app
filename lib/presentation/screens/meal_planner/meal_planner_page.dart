import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/operation_button.dart';

class MealPlannerPage extends StatefulWidget {
  const MealPlannerPage({super.key});

  @override
  State<MealPlannerPage> createState() => _MealPlannerPageState();
}

class _MealPlannerPageState extends State<MealPlannerPage> {
  int nMeals = 0;
  int nDays = 0;
  int minutes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'meal planner'),
      body: SingleChildScrollView(
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
                      .bodyLarge
                      ?.copyWith(color: AppColors.white),
                ),
              ),
              const Divider(color: AppColors.white),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "number of meals per day",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      OperationButton(
                        operation: 'minus',
                        onTap: nMeals > 0
                            ? () => setState(() {
                                  nMeals = nMeals > 0 ? nMeals - 1 : 0;
                                })
                            : null,
                      ),
                      Expanded(
                        child: Text(
                          nMeals.toString().padLeft(2, '0'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: nMeals > 0
                                ? AppColors.white
                                : AppColors.white.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      OperationButton(
                        operation: 'plus',
                        onTap: nMeals < 10
                            ? () => setState(() {
                                  nMeals = nMeals < 10 ? nMeals + 1 : 10;
                                })
                            : null,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
