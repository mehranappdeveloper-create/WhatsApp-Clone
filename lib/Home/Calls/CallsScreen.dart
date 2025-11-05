import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class callsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var callContent = [
      {
        "name": "Mehran",
        "images":
        "assets/images/cropped_circle_image.png",
        "calltime": "15 minutes ago",
        "missed": true,
      },
      {
        "name": "Mehcy",
        "images":
        "assets/images/download.jpeg",
        "calltime": "yesterday",
        "missed": false,
      },
      {
        "name": "Alone",
        "images":
        "assets/images/images.jpeg",
        "calltime": "2 days ago",
        "missed": true,
      },
      {
        "name": "Mr Bean",
        "images":
        "assets/images/Mr bean.webp",
        "calltime": "1 Month ago",
        "missed": false,
      },
      {
        "name": "Mehran",
        "images":
        "assets/images/cropped_circle_image.png",
        "calltime": "15 minutes ago",
        "missed": true,
      },
      {
        "name": "Mehcy",
        "images":
        "assets/images/download.jpeg",
        "calltime": "yesterday",
        "missed": false,
      },
      {
        "name": "Alone",
        "images":
        "assets/images/images.jpeg",
        "calltime": "2 days ago",
        "missed": true,
      },
      {
        "name": "Mr Bean",
        "images":
        "assets/images/Mr bean.webp",
        "calltime": "1 Month ago",
        "missed": false,
      },
      {
        "name": "Mehran",
        "images":
        "assets/images/cropped_circle_image.png",
        "calltime": "15 minutes ago",
        "missed": true,
      },
      {
        "name": "Mehcy",
        "images":
        "assets/images/download.jpeg",
        "calltime": "yesterday",
        "missed": false,
      },
      {
        "name": "Alone",
        "images":
        "assets/images/images.jpeg",
        "calltime": "2 days ago",
        "missed": true,
      },
      {
        "name": "Mr Bean",
        "images":
        "assets/images/Mr bean.webp",
        "calltime": "1 Month ago",
        "missed": false,
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(text: 'Recent Calls', height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callContent.length,
              itemBuilder: (context, index) {
                String sub = callContent[index]["calltime"].toString();
                bool missed = callContent[index]["missed"] as bool;

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      callContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: callContent[index]["name"].toString(),
                    height: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        missed ? Icons.call_missed : Icons.call_received,
                        size: 16,
                        color: missed ? Colors.red : Colors.green,
                      ),
                      SizedBox(width: 5),
                      Uihelper.customText(
                        text: sub,
                        height: 14,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Color(0XFF00A884),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
