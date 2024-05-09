import 'package:flutter/material.dart';
import 'package:whatsapp_clone/userdata.dart';
import 'package:whatsapp_clone/widgets/call_list.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class CallscreenView extends StatelessWidget {
  const CallscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Calls"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CallList(
              name: names[index],
              callTime: callTiming[index],
              profile: images[index]);
        },
      ),
    );
  }
}
