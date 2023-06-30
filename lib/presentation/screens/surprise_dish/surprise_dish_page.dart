import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/surprise_dish/widgets/surprise_dish_body.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class SurpriseDishPage extends StatefulWidget {
  const SurpriseDishPage({super.key});

  @override
  State<SurpriseDishPage> createState() => _SurpriseDishPageState();
}

class _SurpriseDishPageState extends State<SurpriseDishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: 'surprise dish'),
      body: const SurpriseDishBody(),
    );
  }
}
