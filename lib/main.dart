import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_view.dart';
import 'package:whatsapp_clone/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChatView(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        primaryColor: Colors.white,
      ),
    );
  }
}
