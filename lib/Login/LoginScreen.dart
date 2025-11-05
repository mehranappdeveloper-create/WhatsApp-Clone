import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/OTP/otpScreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    var newController = TextEditingController();

    TextEditingController phoneController = TextEditingController();

    String selectCountry;

    List<String> country = [
      'Pakistan',
      'America',
      'Canada',
      'Saudi Arabia',
      'London',
      'South Africa',
      'Germany',
      'Qatar',
      'Dubai',
      'England',
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Login', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Uihelper.customText(
              text: 'Enter your phone number',
              color: Color(0XFF00A884),
              height: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            Uihelper.customText(
              text: 'Whatsapp will need to verify your phone',
              height: 14,
            ),

            Uihelper.customText(
              text: 'number Career charges may apply',
              height: 14,
            ),

            Uihelper.customText(
              text: "What's my number?",
              height: 14,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButtonFormField(
                items: country.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country.toString()),
                    value: country,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectCountry = newValue!;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'select country',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '+92',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 330),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => otpScreen()),
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
