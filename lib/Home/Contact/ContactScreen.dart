import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactContent = [
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Mehran",
        "status": "Busy",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mehcy",
        "status": "Available on Whatsapp",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Alone",
        "status": "Free",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mr Bean",
        "status": "Available",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Mehran",
        "status": "Busy",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mehcy",
        "status": "Available on Whatsapp",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Alone",
        "status": "Free",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mr Bean",
        "status": "Available",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Mehran",
        "status": "Busy",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mehcy",
        "status": "Available on Whatsapp",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8b_qtC8xoY9NibglDhLKnLZ4Svf9-VVtPA&s",
        "name": "Alone",
        "status": "Free",
      },
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAMd6Lw49R3j54DpMvihhgkXAUV8X77zP4nQ&s",
        "name": "Mr Bean",
        "status": "Available",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Uihelper.customText(
          text: 'Contact Screen',
          height: 18,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                contactContent[index]["images"].toString(),
              ),
            ),
            title: Uihelper.customText(
              text: (contactContent)[index]["name"].toString(),
              height: 16,
              fontWeight: FontWeight.bold,
              color: Color(0XFF000000),
            ),
            subtitle: Uihelper.customText(
              text: (contactContent)[index]["status"].toString(),
              height: 14,
            ),
          );
        },
        itemCount: contactContent.length,
      ),
    );
  }
}
