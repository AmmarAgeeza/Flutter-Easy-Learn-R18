import 'package:flutter/material.dart';

import '../featres/notes/screens/notes_screen.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NotesScreen());
  }
}
