import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              label.toLowerCase(),
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
