import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Apis {
  Apis();

  Future<Database> initApis() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'database.db'),
      version: 1,
      onCreate: (db, version) async {
        return await db.execute(
          "CREATE TABLE user (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)",
        );
      },
    );
  }

  Future<void> insert(String name) async {
    Database db = await initApis();
    Map<String, dynamic> map = {'name': name};
    db.insert('user', map);
  }

  Future<void> update(String name, int id) async {
    Database db = await initApis();
    Map<String, dynamic> map = {'name': name};
    db.update('user', map, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> delete(int id) async {
    Database db = await initApis();
    db.delete('user', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> get() async {
    Database db = await initApis();
    List<Map<String, dynamic>> ans = await db.rawQuery('SELECT * FROM user');
    return ans;
  }
}

// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// class Apis {
//   final String _url = "https://65f26f2a034bdbecc764c7d3.mockapi.io/apicrud";
//
//   Future<List<dynamic>> get() async {
//     http.Response res = await http.get(Uri.parse(_url));
//     return jsonDecode(res.body);
//   }
//
//   Future<void> insert(Map<String, dynamic> data) async {
//     final response = await http.post(
//       Uri.parse(_url),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode(data),
//     );
//   }
//
//   Future<void> update(Map<String, dynamic> data, String id) async {
//     final response = await http.put(
//       Uri.parse("$_url/$id"),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode(data),
//     );
//   }
//
//   Future<void> delete(String id) async {
//     await http.delete(Uri.parse('$_url/$id'));
//   }
// }
