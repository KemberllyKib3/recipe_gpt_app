import 'package:flutter/material.dart';
import 'package:recipe_gpt/screens/cria_conta/widgets/cria_conta_body.dart';
import 'package:recipe_gpt/shared/app_colors.dart';

class CriaContaPage extends StatelessWidget {
  const CriaContaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                )),
          ),
          const CriaContaBody(),
        ],
      ),
    );
  }
}
