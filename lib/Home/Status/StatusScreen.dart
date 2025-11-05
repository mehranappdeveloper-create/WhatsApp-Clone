import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Uihelper/uihelper.dart';

class statusScreen extends StatefulWidget {
  @override
  _statusScreenState createState() => _statusScreenState();
}

class _statusScreenState extends State<statusScreen> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  // Camera se image pick
  Future<void> _pickFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Gallery se image pick
  Future<void> _pickFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Bottom sheet open karne ka function
  void _openPickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 120,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                _pickFromGallery();
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                _pickFromCamera();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var statusContent = [
      {
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "statustime": "15 minute ago",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "statustime": "today",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "statustime": "now",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "statustime": "yesterday",
      },
      {
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "statustime": "15 minute ago",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "statustime": "today",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "statustime": "now",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "statustime": "yesterday",
      },
      {
        "images":
        "assets/images/cropped_circle_image.png",
        "name": "Mehran",
        "statustime": "15 minute ago",
      },
      {
        "images":
        "assets/images/download.jpeg",
        "name": "Mehcy",
        "statustime": "today",
      },
      {
        "images":
        "assets/images/images.jpeg",
        "name": "Alone",
        "statustime": "now",
      },
      {
        "images":
        "assets/images/Mr bean.webp",
        "name": "Mr Been",
        "statustime": "yesterday",
      },
      // baki status items ...
    ];

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(text: 'Status', height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                onTap: _openPickerOptions, // tap on plus icon
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: _selectedImage != null
                          ? FileImage(_selectedImage!) as ImageProvider
                          : NetworkImage(
                        "https://37assets.37signals.com/svn/765-default-avatar.png",
                      ),
                      radius: 25,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0XFF008069),
                        child: Icon(Icons.add, color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title: Uihelper.customText(text: 'My Status', height: 20),
            subtitle: Uihelper.customText(
              text: 'Tap to add status update',
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.customText(text: 'Recents Updates', height: 15),
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      statusContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: (statusContent[index]["name"].toString()),
                    height: 16,
                  ),
                  subtitle: Uihelper.customText(
                    text: (statusContent)[index]["statustime"].toString(),
                    height: 14,
                  ),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}













































