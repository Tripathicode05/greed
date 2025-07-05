import 'package:flutter/material.dart';
import 'package:myapp/CustomWidgets/Search/search_bar.dart';
import 'package:myapp/CustomWidgets/Stories/others_story.dart';
import 'package:myapp/CustomWidgets/chats/chatlist_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

final chatdummydata = [
      {
        "name": "Neeraj Tripathi",
        "message": "hola party",
        "time": "yesterday",
        "imgUrl": "https://example.com/image.jpg",
        "isOnline": true,
      },
      {
        "name": "Ayan",
        "message": "hola party",
        "time": "yesterday",
        "imgUrl": "https://example.com/image.jpg",
        "isOnline": true,
      },
      {
        "name": "lambu ayan",
        "message": "hola party",
        "time": "yesterday",
        "imgUrl": "https://example.com/image.jpg",
        "isOnline": true,
      },
      {
        "name": "Ayan ka chota h",
        "message": "hola party",
        "time": "yesterday",
        "imgUrl": "https://example.com/image.jpg",
        "isOnline": true,
      },
      {
        "name": "Neeraj Tripathi",
        "message": "hola party",
        "time": "yesterday",
        "imgUrl": "https://example.com/image.jpg",
        "isOnline": true,
      },
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Greed',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.person_add), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          //stories
          SizedBox(height: 79, child: OthersStory()),

          //line between stories and chats
          Divider(color: Colors.grey[300], thickness: 1, height: 1),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: SearchBarWidget(onChanged: (value) {}),
          ),


          Expanded(
  child: ListView.builder(
    itemCount: chatdummydata.length,
    itemBuilder: (context, index) {
      final chat = chatdummydata[index];
      return ChatlistItem(
        name: (chat["name"]?? "") as String,
        message: (chat["message"]?? "") as String,
        time: (chat["time"]?? "") as String,
        //imgurl wala bacha h
        isOnline: (chat["isOnline"]?? false) as bool,
      );
    },
  ),
),
          //chats
        ],
      ),
    );
  }
}
