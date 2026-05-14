import 'package:flutter/material.dart';

import 'session_4_scrolling/chat_app/views/chat_view_slivers.dart';
import 'session_7_async_clock_app/clock_app/screens/clock_app.dart';
import 'session_8_responsive_adaptive/responsive_widgets/aspect_ratio_widget.dart';
import 'session_8_responsive_adaptive/responsive_widgets/expanded_widget.dart';
import 'session_8_responsive_adaptive/responsive_widgets/felxialbe_widget.dart';

void main() {
  runApp(MaterialApp(home: FelxialbeWidget()));
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
