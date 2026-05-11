import 'package:flutter/material.dart';

import 'session_4_scrolling/chat_app/views/chat_view_slivers.dart';
import 'session_7_async_clock_app/clock_app/screens/clock_app.dart';

void main() {
  runApp(MaterialApp(home: ClockApp()));
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
