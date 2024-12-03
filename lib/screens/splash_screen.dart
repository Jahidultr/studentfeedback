import 'package:flutter/material.dart';

import 'sign_in_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInscreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Image.asset(
          'assets/images/diu_logo.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
