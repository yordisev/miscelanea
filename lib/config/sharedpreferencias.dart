import 'package:shared_preferences/shared_preferences.dart';

class compartiPreferencias {
  static Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  static Future<void> setBool(String key, bool value) async {
    final preferencias = await _getPrefs();
    await preferencias.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    final preferencias = await _getPrefs();
    return preferencias.getBool(key);
  }
}
