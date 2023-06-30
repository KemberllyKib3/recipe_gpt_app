import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/free_chat_page.dart';
import 'package:recipe_gpt/presentation/screens/home/widgets/action_button_widget.dart';
import 'package:recipe_gpt/presentation/screens/meal_planner/meal_planner_page.dart';
import 'package:recipe_gpt/presentation/screens/my_fridge/my_fridge_page.dart';
import 'package:recipe_gpt/presentation/screens/romantic_dinner/romantic_dinner_page.dart';
import 'package:recipe_gpt/presentation/screens/surprise_dish/surprise_dish_page.dart';
import 'package:recipe_gpt/presentation/shared/widgets/assets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'hello, Kemberlly',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'what you want to cook today?',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              ActionButtonWidget(
                label: "what do you have in your fridge?",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyFridgePage(),
                    ),
                  );
                },
              ),
              ActionButtonWidget(
                label: "meal planner",
                icon: SvgPicture.asset(
                  Assets.chefAutoHat,
                  height: 30,
                  width: 30,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MealPlannerPage(),
                    ),
                  );
                },
              ),
              ActionButtonWidget(
                label: "surprise dish",
                icon: SvgPicture.asset(
                  Assets.chefAutoHat,
                  height: 30,
                  width: 30,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SurpriseDishPage(),
                    ),
                  );
                },
              ),
              ActionButtonWidget(
                label: "free text chat gpt",
                icon: SvgPicture.asset(
                  Assets.openAiLogo,
                  height: 25,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FreeChatPage(),
                    ),
                  );
                },
              ),
              ActionButtonWidget(
                label: "romantic dinner",
                icon: SvgPicture.asset(
                  Assets.chefHat,
                  height: 25,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RomanticDinnerPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
