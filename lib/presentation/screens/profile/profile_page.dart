import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/profile/widgets/profile_body.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: "profile"),
      backgroundColor: AppColors.white,
      body: const ProfileBody(),
    );
  }
}
