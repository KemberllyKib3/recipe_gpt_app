import 'package:flutter/material.dart';
import 'package:recipe_gpt/screens/cria_conta/cria_conta_page.dart';
import 'package:recipe_gpt/screens/home/home_page.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/shared/widgets/text_field_widget.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "FalconEye",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 25),
            TextFieldWidget(
              controller: emailController,
              hint: 'e-mail',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: passwordController,
              hint: 'senha',
              obscure: true,
            ),
            const SizedBox(height: 15),
            ButtonWidget(
              label: 'entrar',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'esqueceu sua senha?',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.gray,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CriaContaPage(),
                  ),
                );
              },
              child: const Text(
                'Ainda não tem conta?\nCadastre aqui',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.gray,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
