import 'package:flutter/material.dart';

import '../models/story_model.dart';

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    // SizedBox(
          //   height: 100,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: storiesList.length,
          //     itemBuilder: (context, index) {
          //       return SizedBox(height: 100, child: Text("afsf"));
          //     },
          //   ),
          // ),

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(storiesList.length, (index) {
          return StoryItem(model: storiesList[index]);
        }),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({super.key, required this.model});
  final StoriesModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: model.isRead ? Colors.grey : Colors.blue,
          width: 5,
        ),
      ),
      child: CircleAvatar(radius: 30, backgroundImage: AssetImage(model.image)),
    );
  }
}
