import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_gpt/screens/login/login_page.dart';

class BemVindoPage extends StatefulWidget {
  const BemVindoPage({super.key});

  @override
  State<BemVindoPage> createState() => _BemVindoPageState();
}

class _BemVindoPageState extends State<BemVindoPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Seja Bem vindo",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            Text(
              "FalconEye",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
