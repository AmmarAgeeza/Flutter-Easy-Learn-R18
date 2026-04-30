import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({super.key, required this.model});
  final ChatModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ),
              ),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(),
        ),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(model.avatarUrl),
        ),
        title: Text(model.name),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(model.message, maxLines: 1)),
            Text(model.time),
          ],
        ),
        trailing: Icon(
          model.isRead ? Icons.check_circle : Icons.check,
          color: Colors.blue,
        ),
      ),
    );
  }
}
