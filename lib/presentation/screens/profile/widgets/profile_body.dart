import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/profile/widgets/text_field_tile_widget.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/shared/enums/cook_level_enum.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_chip_widget.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle_rounded,
                size: 60,
                color: AppColors.background,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kemberlly Rocha',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text('local account'.toLowerCase()),
                ],
              ),
            ],
          ),
        ),
        TextFieldTileWidget(
          initialText: 'Kemberlly Rocha',
          hint: 'full name',
          trailingIcon: Icons.edit_rounded,
          bottomButtonLabel: 'save',
          onSaved: (value) {
            debugPrint(value);
          },
        ),
        TextFieldTileWidget(
          initialText: 'password',
          obscureText: true,
          hint: 'password',
          trailingIcon: Icons.edit_rounded,
          bottomButtonLabel: 'save',
          onSaved: (value) {
            debugPrint(value);
          },
        ),
        TextFieldTileWidget(
          initialText: CookLevelEnum.amateurCook.value,
          hint: 'cook level',
          trailingIcon: Icons.edit_rounded,
          bottomButtonLabel: 'save',
          onSaved: (value) {
            debugPrint(value);
          },
        ),
        TextFieldTileWidget(
          initialText: 'shoplist unlimited plan',
          hint: 'subscription',
          trailingIcon: Icons.info_outline_rounded,
          onTapIcon: () {
            debugPrint('info');
          },
        ),
      ],
    );
  }
}
