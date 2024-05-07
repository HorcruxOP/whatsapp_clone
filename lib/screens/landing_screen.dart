import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 60),
              Image.asset(
                "assets/images/bg.png",
                color: Colors.green,
              ),
              const SizedBox(height: 60),
              const Text(
                "Read our Privacy Policy. Tap \"Agree and continue\" to accept the Terms of Service.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen(),));
                },
                child: Container(
                  height: 45,
                  width: 280,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "AGREE AND CONTINUE",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
