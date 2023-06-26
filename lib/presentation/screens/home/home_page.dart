import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/home/widgets/home_body.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBarWidget(title: "Recipe GPT"),
        drawer: Drawer(
          shape: Border(),
          backgroundColor: AppColors.white,
          child: Center(child: Text("Drawer")),
        ),
        body: HomeBody());
  }
}
