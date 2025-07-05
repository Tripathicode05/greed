import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  const MyStory ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 12),
    child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    GestureDetector(

      onTap: () {},

      child: 
      ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.grey[300],
                height: 56,
                width: 56,
                child: Icon(Icons.add, size: 30, color: Colors.blue,),
              )       
          ),
      
       ), 
    SizedBox(height: 6,)
    //
      ],
     ),
    );
  }
}
