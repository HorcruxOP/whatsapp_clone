import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/info_screen.dart';

class ChatView extends StatelessWidget {
  const ChatView({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        child: const Icon(Icons.arrow_back),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    const CircleAvatar(),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoScreen(),
                            ));
                      },
                      child: Text(
                        name,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_call,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

      // appBar: AppBar(
      //   backgroundColor: Colors.white,

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/images/whatsapp_bg.jpg",
          fit: BoxFit.cover,
        ),
      ),
      bottomSheet: Container(
        height: 70,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/whatsapp_bg.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: const InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.attachment_outlined,
                    color: Colors.black38,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black38,
                    size: 28,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: const Color(0xFF1DA75E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.mic,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
