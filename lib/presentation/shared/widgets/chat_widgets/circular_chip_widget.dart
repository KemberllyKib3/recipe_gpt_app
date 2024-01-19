import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_gpt/shared/constants.dart';

class CircularChipWidget extends StatelessWidget {
  final String text;
  final TypeRecipeInfoEnum typeRecipeInfoEnum;

  const CircularChipWidget({
    Key? key,
    required this.text,
    required this.typeRecipeInfoEnum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: typeRecipeInfoEnum.tooltip,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.white),
            ),
            SvgPicture.asset(
              // typeRecipeInfoEnum.icon,
              Assets.appLogo,
              height: 15,
              width: 15,
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
