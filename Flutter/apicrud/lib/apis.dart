import 'dart:convert';

import 'package:http/http.dart' as http;

class Apis {
  final String _url = "https://65f26f2a034bdbecc764c7d3.mockapi.io/apicrud";

  Future<List<dynamic>> getTodo() async {
    // final response = await http.get(Uri.parse(_url));
    // return jsonDecode(response as String);
    http.Response res = await http.get(Uri.parse(_url));
    return jsonDecode(res.body);
  }

  Future<void> insertTodo(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse(_url),
      headers: {"Content-Type": "application/json"},
      body: data,
    );
  }

  Future<void> updateTodo(Map<String, dynamic> data, String id) async {
    final response = await http.put(
      Uri.parse("$_url:$id"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
  }

  Future<void> deleteTodo(String id) async {
    await http.delete(Uri.parse('$_url/$id'));
  }
}
