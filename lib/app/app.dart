import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/theme.dart';
import 'package:recipe_gpt/presentation/screens/login/login_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: const SafeArea(child: LoginPage()),
    );
  }
}
