import 'package:flutter/material.dart';
import 'package:myapp/Screens/chat_screen.dart';

class ChatlistItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
 // final String imageUrl;
  final bool isOnline;
  final Icon? messageIcon;

  const ChatlistItem({
    super.key,
    required this.name,
    required this.message,
    required this.time,
   // required this.imageUrl,
    required this.isOnline,
    this.messageIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
       // backgroundImage: NetworkImage(imageUrl),
        radius: 24,
      ),
      title: Text(name,style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ), 
     subtitle: Row(
      children: [
        if (messageIcon != null) ...[messageIcon!,
        SizedBox(width: 8),
        ],
        Expanded(child: Text(message,overflow: TextOverflow.ellipsis, ))
      ],
     ),
     trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(time,style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
        ),
        SizedBox(height: 6),
        if (isOnline)
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: const Text('1'
          ,style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
        )
      ]
     ),
     onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatScreen(name: name),
        ),
      );
     },
    );
  }
}
