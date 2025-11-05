import 'package:flutter/material.dart';

class Uihelper {
  static Widget CustomButton({
    required VoidCallback Callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: Callback,
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static Widget customText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
