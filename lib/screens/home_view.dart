import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class HomeView extends StatelessWidget {
  final List images = [
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
    "assets/images/profile.png",
  ];
  final List names = [
    "Ram",
    "Shyam",
    "Rahul",
    "Vishal",
    "Sachin",
    "Rahul",
    "Vishal",
    "Sachin",
    "Rahul",
    "Vishal",
  ];
  final List msgTiming = [
    "Today",
    "Yesterday",
    "10:00",
    "15:30",
    "Yesterday",
    "05/02/24",
    "07/02/24",
    "10/02/24",
    "15/03/24",
    "25/02/23",
  ];
  final List msgs = [
    "Hi",
    "Hello",
    "How are you",
    "Good Morning",
    "Good Night",
    "Good Evening",
    "Good Morning",
    "Are u free?",
    "Wanna Play games?",
    "Good Night",
  ];
  final List msgRead = [
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
  ];

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text(
          "WhatsApp",
          style:
              TextStyle(color: Color(0xFF125E3A), fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          PopupMenuButton(
            surfaceTintColor: Colors.white,
            onSelected: (selected) {
              if (selected == 5) {}
            },
            elevation: 10,
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text(
                  "New Group",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text(
                  "New Broadcast",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text(
                  "Linked Devices",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text(
                  "Starred Messages",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 29, 28, 28),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Search...",
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatList(
                  name: names[index],
                  message: msgs[index],
                  time: msgTiming[index],
                  profile: images[index],
                  messageRead: msgRead[index],
                );
              },
              itemCount: 10,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            ),
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.archive_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Archived",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "39",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF1DA75E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF1DA75E),
        child: const Icon(
          Icons.chat,
          color: Colors.black,
        ),
      ),
    );
  }
}
