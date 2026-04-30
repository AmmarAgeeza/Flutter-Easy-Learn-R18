import 'package:flutter/material.dart';

import 'session_3_buttons_statefull/calc_app/calc_app.dart';
import 'session_4_scrolling/chat_app/views/chat_view.dart';
import 'session_4_scrolling/chat_app/views/chat_view_slivers.dart';
import 'session_4_scrolling/list_view_widget.dart';
import 'session_4_scrolling/single_child_scroll_view_widget.dart';

void main() {
  runApp(MaterialApp(home: CalcApp()));
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => ChatViewSlivers()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
