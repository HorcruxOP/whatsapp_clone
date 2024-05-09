import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_view.dart';

class CallList extends StatelessWidget {
  const CallList({
    super.key,
    required this.name,
    required this.callTime,
    required this.profile,
  });

  final String name, callTime;
  final String profile;

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
        callTime,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.call_outlined,
          color: Colors.green,
        ),
      ),
    );
  }
}
