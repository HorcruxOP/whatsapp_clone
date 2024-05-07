import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enter your phone number",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "WhatsApp will need to verify your phone number.",
            ),
            TextButton(
              onPressed: () => pickCountry(),
              child: const Text(
                "Pick country",
              ),
            ),
            Row(
              children: [
                if (country != null) Text("+${country!.phoneCode}"),
                const SizedBox(width: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(hintText: "phone number"),
                  ),
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              // onPressed: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => OtpScreen(),
              //       ));
              // },
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: phoneController.text,
                  verificationCompleted:
                      (PhoneAuthCredential credential) async {
                    await FirebaseAuth.instance
                        .signInWithCredential(credential);
                  },
                  verificationFailed: (FirebaseAuthException e) {
                    if (e.code == 'invalid-phone-number') {
                      const snackBar= SnackBar(
                          content:
                              Text("The provided phone number is not valid."));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      print('The provided phone number is not valid.');
                    }
                  },
                  codeSent: (String verificationId, int? resendToken) async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(
                            verificationId: verificationId,
                          ),
                        ));
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
