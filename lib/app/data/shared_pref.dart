import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  writeString(String key, String value) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  Future removeAll() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Future<String?> readString(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(key);
  }
}
