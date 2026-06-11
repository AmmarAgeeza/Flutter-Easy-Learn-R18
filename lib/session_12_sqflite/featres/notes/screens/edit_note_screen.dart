import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_12_sqflite/featres/notes/models/note_model.dart';

import '../../../core/database/sql_helper.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  void initState() {
    super.initState();
    titleController.text = widget.note.title;
    contentController.text = widget.note.content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          'Edit Note',
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
              onPressed: () async{
                var note = NoteModel(
                  id: widget.note.id,
                  title: titleController.text,
                  content: contentController.text,
                  createdAt: widget.note.createdAt,
                );
              await  SqlHelper.updateData(
                  SqlKey.noteTable,
                  widget.note.id!,
                  note.toMap(),
                );
                Navigator.pop(context);
              },
              child: Text("Update Note"),
            ),
          ],
        ),
      ),
    );
  }
}
