import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import 'chat_list_tile.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: chatsList.length,
      itemBuilder: (context, index) {
        return ChatListTile(model: chatsList[index],);
      },
    );
  }
}
