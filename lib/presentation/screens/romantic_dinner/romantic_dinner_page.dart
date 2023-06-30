import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/romantic_dinner/widgets/romantic_dinner_body.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class RomanticDinnerPage extends StatefulWidget {
  const RomanticDinnerPage({super.key});

  @override
  State<RomanticDinnerPage> createState() => _RomanticDinnerPageState();
}

class _RomanticDinnerPageState extends State<RomanticDinnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: "romantic dinner"),
      body: const RomanticDinnerBody(),
    );
  }
}
