import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_12_sqflite/core/database/sql_helper.dart';
import 'package:flutter_widgets/session_12_sqflite/featres/notes/models/note_model.dart';
import 'package:flutter_widgets/session_12_sqflite/featres/notes/screens/add_note_screen.dart';
import 'package:flutter_widgets/session_12_sqflite/featres/notes/screens/edit_note_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<NoteModel> notes = [];

  @override
  void initState() {
    super.initState();
    getNotes();
  }

  Future<void> getNotes() async {
    var notesListMap = await SqlHelper.getData(SqlKey.noteTable);

    notes = notesListMap.map((e) => NoteModel.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xff252525),
        title: Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff252525),
        elevation: 20,
        onPressed: () async {
          await Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddNoteScreen()));
          getNotes();
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: notes.isEmpty
          ? Center(
              child: Text(
                'No Notes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                var note = notes[index];
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    trailing: IconButton(
                      onPressed: () async {
                        //delete
                        await SqlHelper.deleteData(SqlKey.noteTable, note.id!);
                        //get
                        getNotes();
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                    onTap: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EditNoteScreen(note: note),
                        ),
                      );
                      getNotes();
                    },
                    title: Text(note.title),
                    subtitle: Text(note.content),
                  ),
                );
              },
            ),
    );
  }
}
