import 'package:flutter/material.dart';
import 'package:recipe_gpt/screens/login/widgets/login_body.dart';
import 'package:recipe_gpt/shared/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: AppColors.black,
              height: 100,
              width: 100,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.abc_outlined,
                  size: 50,
                ),
              ),
            ),
          ),
          const LoginBody(),
        ],
      ),
    );
  }
}
