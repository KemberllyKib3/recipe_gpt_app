import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/cook_level/cook_level_page.dart';
import 'package:recipe_gpt/presentation/screens/cria_conta/cria_conta_page.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/text_field_widget.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "welcome back",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.gray),
                  ),
                  const SizedBox(height: 50),
                  TextFieldWidget(
                    controller: emailController,
                    hint: 'e-mail',
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    controller: passwordController,
                    hint: 'password',
                    obscure: true,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget.primary(
                    label: 'sign in',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CookLevelPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'forgot password?',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: AppColors.gray),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CriaContaPage(),
                        ),
                      );
                    },
                    child: Text(
                      'don\'t you have an account?\ncreate one now!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: AppColors.gray),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
