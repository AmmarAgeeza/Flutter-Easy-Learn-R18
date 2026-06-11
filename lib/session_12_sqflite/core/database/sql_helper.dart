import 'dart:developer';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  //create obj

  static Database? database;

  static Future<Database?> getDatabase() async {
    // if (database != null) return database;
    // database = await initDatabase();
    database ??= await initDatabase();

    return database;
  }

  //init data

  static Future<Database> initDatabase() async {
    //get path

    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "notes.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database database, int version) {
        database.execute("""
            CREATE TABLE notes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT,
            createdAt TEXT
            )
          """);
      },
    );
  }

  //! CRUD
  //insert
  static void insertData(String table, Map<String, Object?> data) async {
    final db = await getDatabase();
    db?.insert(table, data);
    log("data inserted");
  }

  //read - get
  static Future<List<Map<String, Object?>>> getData(String table) async {
    final db = await getDatabase();
    return await db?.query(table) ?? [];
  }

  //delete
 static Future<void> deleteData(String table, int id) async {
    final db = await getDatabase();
    await db?.delete(table, where: 'id = ?', whereArgs: [id]);
    log("data deleted");
  }

  //update
 static Future<void> updateData(
    String table,
    int id,
    Map<String, Object?> data,
  ) async {
    final db = await getDatabase();
    await db?.update(table, data, where: 'id = ?', whereArgs: [id]);
    log("data updated");
  }
}

class SqlKey {
  static const String noteTable = "notes";
}
