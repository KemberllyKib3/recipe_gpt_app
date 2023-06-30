import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/widgets/meal_planner_body.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class MealPlannerPage extends StatefulWidget {
  const MealPlannerPage({super.key});

  @override
  State<MealPlannerPage> createState() => _MealPlannerPageState();
}

class _MealPlannerPageState extends State<MealPlannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: 'meal planner'),
      body: const MealPlannerBody(),
    );
  }
}
