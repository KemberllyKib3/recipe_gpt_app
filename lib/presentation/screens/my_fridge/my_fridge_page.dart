import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/my_fridge/widgets/my_fridge_body.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class MyFridgePage extends StatefulWidget {
  const MyFridgePage({super.key});

  @override
  State<MyFridgePage> createState() => _MyFridgePageState();
}

class _MyFridgePageState extends State<MyFridgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: 'what do I have in my fridge?'),
      body: const MyFridgeBody(),
    );
  }
}
