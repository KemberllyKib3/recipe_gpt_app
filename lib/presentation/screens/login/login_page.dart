import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/login/widgets/login_body.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: ClipOval(
                child: Container(
                  color: AppColors.black,
                  height: 50,
                  width: 50,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.chat_rounded,
                      color: AppColors.white,
                      size: 30,
                    ),
                  ),
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
