import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_gpt/presentation/screens/login/widgets/login_body.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/assets.dart';

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
                  color: AppColors.background,
                  height: 50,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                      Assets.appLogo,
                      height: 30,
                      width: 30,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
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
