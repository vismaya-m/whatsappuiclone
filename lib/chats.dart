import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
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
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              hintText: "Search...",
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("All", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Unread 26",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Favorites",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Groups 14",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.indianexpress.com/2020/09/shinchan.jpg",
              ),
            ),
            title: Text("Shinchan<3"),
            subtitle: Text("Hello"),
            trailing: Text("9:00pm"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://cdn-useast1.kapwing.com/static/templates/crying-cat-meme-template-full-719a53dc.webp",
              ),
            ),
            title: Text("<3"),
            subtitle: Text("wdym?"),
            trailing: Text("12:40am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuBw6mCTkkblv7ZgQZTnoRcDoH9bWOKM7-HQ&s",
              ),
            ),
            title: Text("rubyyyychan"),
            subtitle: Text("idk!"),
            trailing: Text("12:04am"),
          ),
        ],
      ),
    );
  }
}
