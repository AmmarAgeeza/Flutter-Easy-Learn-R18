import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_12_sqflite/core/database/sql_helper.dart';
import 'package:flutter_widgets/session_12_sqflite/featres/notes/models/note_model.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          'Add Note',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: contentController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Content',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //create note model obj
                NoteModel note = NoteModel(
                  title: titleController.text,
                  content: contentController.text,
                  createdAt: DateTime.now().toIso8601String(),
                );
                // SqlHelper.insertData(SqlKey.noteTable, {
                //   "title": note.title,
                //   "content": note.content,
                //   "createdAt": note.createdAt,
                // });
                // SqlHelper.insertData(SqlKey.noteTable, {
                //   "title": titleController.text,
                //   "content": contentController.text,
                //   "createdAt": DateTime.now().toIso8601String(),
                // });
                SqlHelper.insertData(SqlKey.noteTable, note.toMap());
                Navigator.pop(context);
              },
              child: Text("Add Note"),
            ),
          ],
        ),
      ),
    );
  }
}
