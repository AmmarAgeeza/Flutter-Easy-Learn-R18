import 'package:flutter/material.dart';

import 'session_4_scrolling/chat_app/views/chat_view_slivers.dart';
import 'session_5_textfield/text_field_widget.dart';

void main() {
  runApp(MaterialApp(home: TextFieldWidget()));
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
