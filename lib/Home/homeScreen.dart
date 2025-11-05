import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Home/Calls/CallsScreen.dart';
import 'package:whatsapp_clone/Home/Camera/CameraScreen.dart';
import 'package:whatsapp_clone/Home/Chats/chatsScreen.dart';
import 'package:whatsapp_clone/Home/Contact/ContactScreen.dart';
import 'package:whatsapp_clone/Home/Status/StatusScreen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            'Whatsapp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Search icon pe ContactScreen open
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactScreen()),
                );
              },
              icon: Image.asset('assets/images/Search.png'),
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                // Option select hone pe action
                if (value == 'New Group') {
                  print('New Group Clicked');
                } else if (value == 'Settings') {
                  print('Settings Clicked');
                } else if (value == 'Logout') {
                  print('Logout Clicked');
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'New Group',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: 'Settings',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: 'Logout',
                    child: Text('Logout'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            cameraScreen(),
            chatsScreen(),
            statusScreen(),
            callsScreen(),
          ],
        ),
      ),
    );
  }
}
