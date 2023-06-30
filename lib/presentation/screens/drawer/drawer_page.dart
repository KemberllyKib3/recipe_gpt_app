import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_gpt/presentation/screens/drawer/widgets/list_tile_widget.dart';
import 'package:recipe_gpt/presentation/screens/login/login_page.dart';
import 'package:recipe_gpt/presentation/screens/profile/profile_page.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/assets.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        backgroundColor: AppColors.white,
        child: Column(
          children: [
            Expanded(
              child: ColoredBox(
                color: AppColors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          border: Border(
                            bottom: BorderSide(color: AppColors.black),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.darkerBackground,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: SvgPicture.asset(
                                Assets.appLogo,
                                height: 25,
                                width: 25,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            Text(
                              appName,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      ListTileWidget.simple(
                        label: 'profile',
                        leading: Icons.person_outline_rounded,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                      ),
                      ListTileWidget.simple(
                        label: 'my recipes',
                        leading: Icons.bookmark_outline_rounded,
                        onTap: () {},
                      ),
                      ListTileWidget.simple(
                        label: 'my meal plans',
                        leading: Icons.bookmark_outline_rounded,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: AppColors.gray)),
              ),
              child: Column(
                children: [
                  ListTileWidget.simple(
                    label: 'subscription plans',
                    leading: Icons.star_outline_rounded,
                    onTap: () {},
                  ),
                  ListTileWidget.simple(
                    label: 'about the app',
                    leading: Icons.info_outline_rounded,
                    onTap: () {},
                  ),
                  ListTileWidget.simple(
                    label: 'developed by Kemberlly',
                    leading: Icons.code_rounded,
                    onTap: () {},
                  ),
                  ListTileWidget.simple(
                    label: 'logout',
                    leading: Icons.logout_rounded,
                    color: AppColors.error,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
