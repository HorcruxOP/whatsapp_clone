import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/callscreen_view.dart';
import 'package:whatsapp_clone/screens/community_view.dart';
import 'package:whatsapp_clone/screens/home_view.dart';
import 'package:whatsapp_clone/screens/update_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> index = [
    HomeView(),
    const UpdateView(),
    const CommunityView(),
    const CallscreenView(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildNavBarItem(
      IconData filledIcon, IconData outlineIcon, String text, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    _selectedIndex == index ? const Color(0xFFD8FDD2) : Colors.white,
              ),
              child: Icon(
                _selectedIndex == index ? filledIcon : outlineIcon,
                size: 28,
                color:
                    _selectedIndex == index ? const Color(0xFF125E3A) : Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: _selectedIndex == index
                      ? FontWeight.w900
                      : FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index[_selectedIndex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black12,
              width: 0.4,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Icons.chat, Icons.chat_outlined, "Chats", 0),
            buildNavBarItem(Icons.update, Icons.update_outlined, "Updates", 1),
            buildNavBarItem(
                Icons.people, Icons.people_outlined, "Communities", 2),
            buildNavBarItem(Icons.call, Icons.call_outlined, "Calls", 3),
          ],
        ),
      ),
    );
  }
}
