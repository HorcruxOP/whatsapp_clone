import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text("Name"),
      subtitle: Text(
        "Last Chat",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            "Time",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Icon(
            Icons.push_pin,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
