import 'package:flutter/material.dart';

import 'session_4_scrolling/chat_app/views/chat_view_slivers.dart';
import 'session_6_theme_localization/app/app.dart';

void main() {
  runApp(MyApp());
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
