import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_view.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.profile,
    this.messageRead,
  });

  final String name, message, time;
  final String profile;
  final bool? messageRead;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatView(
                      name: name,
                      image: profile,
                    )));
      },
      leading: CircleAvatar(
        foregroundImage: NetworkImage(profile),
      ),
      title: Text(name),
      subtitle: Text(
        message,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          messageRead == true
              ? const Icon(
                  Icons.done_all,
                  size: 15,
                )
              : Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color(0xFF1DA75E),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
        ],
      ),
    );
  }
}
