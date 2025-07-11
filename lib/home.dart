import 'package:flutter/material.dart';
import 'package:whatsappuiclone/calls.dart';
import 'package:whatsappuiclone/chats.dart';
import 'package:whatsappuiclone/communities.dart';
import 'package:whatsappuiclone/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  List<Widget>pages=[Chats(),Updates(),Commu(),Calls()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("WhatsApp"),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.camera_alt),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
           index=value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor:Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "update"),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline),label: "communities",),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "calls"),
        ],
      ),
      body: pages[index],
    );
  }
}
