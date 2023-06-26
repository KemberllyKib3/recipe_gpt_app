import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/cria_conta/widgets/cria_conta_body.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class CriaContaPage extends StatelessWidget {
  const CriaContaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.transparent(
        context,
        title: appName,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppColors.white,
      body: const CriaContaBody(),
    );
  }
}
