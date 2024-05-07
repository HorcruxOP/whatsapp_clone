import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/main_page.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;

  const OtpScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter OTP',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: widget.verificationId,
                    smsCode: otpController.text,
                  );
                  // Sign in the user with the credential
                  UserCredential userCredential =
                      await FirebaseAuth.instance.signInWithCredential(credential);
                  // Navigate to main page upon successful sign-in
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                } catch (e) {
                  print(e.toString());
                  // Handle sign-in errors
                  // For example, display a snackbar with the error message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Failed to sign in: ${e.toString()}'),
                    ),
                  );
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
