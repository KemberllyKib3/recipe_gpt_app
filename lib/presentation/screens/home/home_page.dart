import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/drawer/drawer_page.dart';
import 'package:recipe_gpt/presentation/screens/home/widgets/home_body.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBarWidget.primary(title: "Recipe GPT"),
      drawer: const DrawerPage(),
      body: const HomeBody(),
    );
  }
}
