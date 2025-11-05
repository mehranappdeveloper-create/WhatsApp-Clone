import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Home/homeScreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class profileScreen extends StatefulWidget {
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Profile', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Uihelper.customText(
                text: 'Profile info',
                height: 20,
                color: Color(0XFF00A884),
              ),
            ],
          ),
          Uihelper.customText(
            text: 'Please provide your name and an optional',
            height: 16,
          ),
          Uihelper.customText(text: 'profile photo', height: 16),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              _openBottom(context);
            },
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Color(0XFFD9D9D9),
              child: Image.asset(
                'assets/images/photo-camera 1.png',
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Type your name here',
                    hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Image.asset('assets/images/happy-face 1.png'),
            ],
          ),
          SizedBox(height: 250),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => homeScreen()),
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
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 400,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){_pickImage(ImageSource.camera);}, icon: Icon(Icons.camera_alt, color: Colors.grey, size: 80),),
                  IconButton(onPressed: (){_pickImage(ImageSource.gallery);}, icon: Icon(Icons.image, color: Colors.grey, size: 80),),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo==null) return;
      final tempimage=File(photo.path);
      setState(() {
        pickedImage=tempimage;
      });
    }
    catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Color(0XFF00A884),));
    }
  }
}



