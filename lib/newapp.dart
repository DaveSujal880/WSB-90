import 'package:flutter/material.dart';

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My New App",
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  var arrContent = [
    {
      "Id": 1,
      "Name": "WS",
      "Address": "Jodhpur",
      "Image":
          "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yX3Bob3RvX29mX2FfbGlvbl9pc29sYXRlZF9vbl9jb2xvcl9iYWNrZ3JvdW5kXzJhNzgwMjM1LWRlYTgtNDMyOS04OWVjLTY3ZWMwNjcxZDhiMV8xLmpwZw.jpg"
    },
    {
      "Id": 2,
      "Name": "Tech",
      "Address": "Jaipur",
      "Image":
          "https://www.bgastore.uk/cache/99/1200x1200-Posters_2022_2_Focused_lion1.jpg"
    },
    {
      "Id": 3,
      "Name": "WSCUBETECH",
      "Address": "Udaipur",
      "Image":
          "https://studiowildlife.com/wp-content/uploads/2021/10/245528858_183911853822648_6669060845725210519_n.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${arrContent[index]["Image"]}"),
              ),
              title: Text("${arrContent[index]["Name"]}"),
              subtitle: Text("${arrContent[index]["Address"]}"),
              trailing: Icon(Icons.call));
        },
        itemCount: arrContent.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}
