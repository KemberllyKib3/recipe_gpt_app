import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/shared/widgets/text_field_widget.dart';

class CriaContaBody extends StatefulWidget {
  const CriaContaBody({super.key});

  @override
  State<CriaContaBody> createState() => _CriaContaBodyState();
}

class _CriaContaBodyState extends State<CriaContaBody> {
  final formKey = GlobalKey<FormState>();
  final nomeController = TextEditingController();
  final sobrenomeController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
            const SizedBox(height: 5),
            const Text(
              "crie sua conta",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            TextFieldWidget(
              controller: nomeController,
              hint: 'nome',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: sobrenomeController,
              hint: 'sobrenome',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: emailController,
              hint: 'e-mail',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: senhaController,
              hint: 'senha',
            ),
            const SizedBox(height: 15),
            ButtonWidget(
              label: 'criar',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
