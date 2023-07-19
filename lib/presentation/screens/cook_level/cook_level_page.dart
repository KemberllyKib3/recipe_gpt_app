import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/home/home_page.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';
import 'package:recipe_gpt/presentation/shared/widgets/button_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_selector_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/prompt_setting_widget.dart';

class CookLevelPage extends StatefulWidget {
  const CookLevelPage({super.key});

  @override
  State<CookLevelPage> createState() => _CookLevelPageState();
}

class _CookLevelPageState extends State<CookLevelPage> {
  String cookLevel = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(appName,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: AppColors.white)),
                  const SizedBox(height: 5),
                  Text(
                    "before we start, let's set up your profile",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.gray),
                  ),
                  const SizedBox(height: 50),
                  PromptSettingWidget(
                    title: 'cook level',
                    subtitle: 'how would you describe your cooking skills?',
                    setting: ItemSelectorWidget.unique(
                      isExpandable: true,
                      items: CookLevelEnum.values.map((e) => e.label).toList(),
                      selectedItems: [cookLevel],
                      onChanged: (value) =>
                          setState(() => cookLevel = value.first),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ButtonWidget.white(
              label: 'launch',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
