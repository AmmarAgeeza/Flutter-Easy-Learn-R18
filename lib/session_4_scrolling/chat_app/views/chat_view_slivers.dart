import 'package:flutter/material.dart';

import '../widgets/chat_list_view.dart';
import '../widgets/story_list.dart';

class ChatViewSlivers extends StatelessWidget {
  const ChatViewSlivers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Color(0xff131629),
            // leading: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Image.asset("assets/images/logo_withoutBG.png"),
            // ),
            title: Text('Chats', style: TextStyle(color: Colors.white)),
            actions: [
              Icon(Icons.camera_alt_outlined, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.edit, color: Colors.white),
            ],
          ),
          // //strory
          SliverToBoxAdapter(child: StoryList()),
          // //divider
          SliverToBoxAdapter(child: Divider(color: Colors.grey)),
          // //chat list
          ChatListView(),
        ],
      ),
    );
  }
}
