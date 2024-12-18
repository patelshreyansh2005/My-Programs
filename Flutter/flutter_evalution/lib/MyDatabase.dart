import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class MyDatabase {
  MyDatabase();

  Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'user.db'),
      version: 1,
      onCreate: (db, version) async {
        return await db.execute(
          "CREATE TABLE User (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)",
        );
      },
    );
  }

  Future<void> inset(String name) async {
    Database db = await initDatabase();
    Map<String, dynamic> map = {'name': name};
    db.insert('user', map);
  }

  Future<void> update(String name, int id) async {
    Database db = await initDatabase();
    Map<String, dynamic> map = {'name': name};
    db.update('user', map, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> delete(int id) async {
    Database db = await initDatabase();
    db.delete('user', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> get() async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> ans = await db.rawQuery('SELECT * FROM user');
    return ans;
  }
}
