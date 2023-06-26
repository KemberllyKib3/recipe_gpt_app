import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class MealPlannerPage extends StatelessWidget {
  const MealPlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'meal planner'),
      body: Container(),
    );
  }
}
