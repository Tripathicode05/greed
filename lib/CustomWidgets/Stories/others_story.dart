import 'package:flutter/material.dart';
import 'package:myapp/CustomWidgets/Stories/my_story.dart';

class OthersStory extends StatelessWidget {
  OthersStory({super.key});

  final List<Map<String, String>> stories = [
    {"username": "fhung", "imageUrl": "https://i.pravatar.CC/150?img=1"},
    {"username": "chung", "imageUrl": "https://i.pravatar.CC/150?img=2"},
    {"username": "Aman", "imageUrl": "https://i.pravatar.CC/150?img=3"},
    {"username": "chaman", "imageUrl": "https://i.pravatar.CC/150?img=4"},
    {"username": "chaman", "imageUrl": "https://i.pravatar.CC/150?img=5"},
    {"username": "chaman", "imageUrl": "https://i.pravatar.CC/150?img=6"},
    {"username": "chaman", "imageUrl": "https://i.pravatar.CC/150?img=7"},
    {"username": "chaman", "imageUrl": "https://i.pravatar.CC/150?img=8"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 1 + stories.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return MyStory();
        } else {
          final story = stories[index - 1];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                   ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      story['imageUrl'] ?? '',
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                SizedBox(height: 6),
                Text(story['userName'] ?? '', style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        }
      },
    );
  }
}
