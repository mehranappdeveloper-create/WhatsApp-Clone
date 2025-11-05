import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Onboarding/Onboardingscreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboardingscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "WhatsApp",
              color: Color(0xFF000000),
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
