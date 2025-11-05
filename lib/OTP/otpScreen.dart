import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/ProfileInfo/profileScreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class otpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('OTP', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Uihelper.customText(
                text: 'Verifying your number',
                height: 20,
                color: Color(0XFF00A884),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Uihelper.customText(
              text: 'You’ve tried to register +92-3449623516',
              height: 14,
            ),
            Uihelper.customText(
              text: 'recently. Wait before requesting an sms or a call',
              height: 14,
            ),
            RichText(
              text: TextSpan(
                text: 'with your code. ',
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Wrong number?',
                    style: TextStyle(color: Color(0XFF00A884), fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Uihelper.customText(
              text: 'Didn’t receive code?',
              height: 16,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 350),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF00A884),
                foregroundColor: Colors.white,
                minimumSize: Size(300, 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
