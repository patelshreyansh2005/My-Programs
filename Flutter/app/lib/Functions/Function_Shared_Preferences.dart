import 'package:shared_preferences/shared_preferences.dart';

class Function_Shared_Preferences {
  Function_Shared_Preferences();

  static Future<void> remove_Shared_Preferences() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('email');
  }

  static Future<void> insert_Shared_Preferences(String email) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email', email);
  }
}
