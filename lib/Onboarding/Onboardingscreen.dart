import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Login/LoginScreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class Onboardingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Onboardingscreen", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(40)),
            Image.asset('assets/images/image 1.png'),
            SizedBox(height: 30),
            Uihelper.customText(
              text: 'Welcome to Whatsapp',
              height: 20,fontWeight: FontWeight.normal ,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: 'Read out ', height: 14),
                Uihelper.customText(
                  text: 'Privacy Policy. ',
                  height: 14,
                  color: Colors.blue,
                ),
                Uihelper.customText(
                  text: 'Tap "Agree and Continue"',
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: 'to accept the ', height: 14),
                Uihelper.customText(
                  text: 'Teams of Service.',
                  height: 14,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF00A884),
                foregroundColor: Colors.white,
                minimumSize: Size(300, 35), // width & height //
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text('Agree and continue'),
            ),
          ],
        ),
      ),
    );
  }
}
