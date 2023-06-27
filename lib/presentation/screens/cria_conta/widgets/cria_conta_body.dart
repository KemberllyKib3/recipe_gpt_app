import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/text_field_widget.dart';

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
            Text(
              appName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 5),
            Text(
              "create your account",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: AppColors.gray),
            ),
            const SizedBox(height: 30),
            TextFieldWidget(
              controller: nomeController,
              hint: 'first name',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: sobrenomeController,
              hint: 'last name',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: emailController,
              hint: 'email',
            ),
            const SizedBox(height: 15),
            TextFieldWidget(
              controller: senhaController,
              hint: 'password',
            ),
            const SizedBox(height: 15),
            ButtonWidget.primary(
              label: 'create',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
