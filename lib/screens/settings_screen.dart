import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/landing_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(),
              title: Text("Bhupender Singh"),
              subtitle: Text("Your opinion is not my reality"),
            ),
            const ListTile(
              leading: Icon(Icons.key_outlined),
              title: Text("Account"),
              subtitle: Text("Security notifications, change number"),
            ),
            const ListTile(
              leading: Icon(Icons.lock_outlined),
              title: Text("Privacy"),
              subtitle: Text("Block contacts, disappearing messages"),
            ),
            const ListTile(
              leading: Icon(Icons.person_outlined),
              title: Text("Avatar"),
              subtitle: Text("Create, edit, profile photo"),
            ),
            const ListTile(
              leading: Icon(Icons.chat_sharp),
              title: Text("Chats"),
              subtitle: Text("Theme, wallpapers, chat history"),
            ),
            const ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text("Notifications"),
              subtitle: Text("Message, group & call tones"),
            ),
            const ListTile(
              leading: Icon(Icons.storage_outlined),
              title: Text("Storage and data"),
              subtitle: Text("Network usage, auto-download"),
            ),
            const ListTile(
              leading: Icon(Icons.key_outlined),
              title: Text("App language"),
              subtitle: Text("English (device's language)"),
            ),
            const ListTile(
              leading: Icon(Icons.help_outlined),
              title: Text("Help"),
              subtitle: Text("Help centre, contact us, privacy policy"),
            ),
            const ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text("Invite a friend"),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    // ignore: use_build_context_synchronously
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LandingScreen(),
                    ));
              },
              child: const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
