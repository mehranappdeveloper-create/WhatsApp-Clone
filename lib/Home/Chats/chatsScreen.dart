import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Home/Contact/ContactScreen.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class chatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        "images":
            "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "lastmsg": "Lorem Ipsum",
        "time": "06:00 pm",
        "msg": "7",
      },
      {
        "images":
            "assets/images/download.jpeg",
        "name": "Mehcy",
        "lastmsg": "Lorem Ipsum",
        "time": "09:00 pm",
        "msg": "2",
      },
      {
        "images":
            "assets/images/images.jpeg",
        "name": "Alone",
        "lastmsg": "Lorem Ipsum",
        "time": "12:00 pm",
        "msg": "9",
      },
      {
        "images":
            "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "lastmsg": "Lorem Ipsum",
        "time": "03:00 am",
        "msg": "12",
      },
      {
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "lastmsg": "Lorem Ipsum",
        "time": "06:00 pm",
        "msg": "7",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "lastmsg": "Lorem Ipsum",
        "time": "09:00 pm",
        "msg": "2",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "lastmsg": "Lorem Ipsum",
        "time": "12:00 pm",
        "msg": "9",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "lastmsg": "Lorem Ipsum",
        "time": "03:00 am",
        "msg": "12",
      },
      {
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "lastmsg": "Lorem Ipsum",
        "time": "06:00 pm",
        "msg": "7",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "lastmsg": "Lorem Ipsum",
        "time": "09:00 pm",
        "msg": "2",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "lastmsg": "Lorem Ipsum",
        "time": "12:00 pm",
        "msg": "9",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "lastmsg": "Lorem Ipsum",
        "time": "03:00 am",
        "msg": "12",
      },{
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "lastmsg": "Lorem Ipsum",
        "time": "06:00 pm",
        "msg": "7",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "lastmsg": "Lorem Ipsum",
        "time": "09:00 pm",
        "msg": "2",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "lastmsg": "Lorem Ipsum",
        "time": "12:00 pm",
        "msg": "9",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "lastmsg": "Lorem Ipsum",
        "time": "03:00 am",
        "msg": "12",
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.customText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 12,
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.customText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0XFF036A01),
                        child: Uihelper.customText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset('assets/images/mode_comment_black_24dp 1.png'),
        ),
      ),
    );
  }
}
