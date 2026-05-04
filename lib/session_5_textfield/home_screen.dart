import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.email, required this.password});
  final String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(child: Column(
        children: [
          Text('Email: $email'),
          Text('password: $password'),
        ],
      )),
    );
  }
}
