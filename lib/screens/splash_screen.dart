import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logos/whatsapp_logo.png",
          height: 50,
          color: Colors.grey,
        ),
      ),
    );
  }
}
