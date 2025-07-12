import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

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
      ), floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.call),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
    ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Favourites"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.favorite),
            ),
            title: Text("Add favorite"),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent"),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.indianexpress.com/2020/09/shinchan.jpg",
              ),
            ),
            title: Text("Shinchan<3"),
            subtitle: Text("Yesterday,6:30pm"),

            trailing: Icon(Icons.call),
          ),ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://cdn-useast1.kapwing.com/static/templates/crying-cat-meme-template-full-719a53dc.webp",
              ),
            ),
            title: Text("<3"),
            subtitle: Text("Today,12:41am"),trailing: Icon(Icons.call),

          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuBw6mCTkkblv7ZgQZTnoRcDoH9bWOKM7-HQ&s",
              ),
            ),
            title: Text("rubyyyychan"),
            subtitle: Text("Today,1:22am"),trailing: Icon(Icons.call),

          ),
        ],
      ),
    );
  }
}
