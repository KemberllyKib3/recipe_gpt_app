import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';

class SenderWidget extends StatelessWidget {
  final String text;

  const SenderWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 13,
          ),
          decoration: const BoxDecoration(
            color: AppColors.greenSender,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ],
          )),
    );
  }
}
