import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static SharedPreferences? _prefs;

   static Future<SharedPreferences> initPrefs() async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<void> setData<T>({required String key, required T value}) async {
    final SharedPreferences pref = await initPrefs();

    if (T == String) {
      pref.setString(key, value as String);
    } else if (T == int) {
      pref.setInt(key, value as int);
    } else if (T == bool) {
      pref.setBool(key, value as bool);
    } else {
      pref.setDouble(key, value as double);
    }
  }

  static Future<T?> getData<T>({required String key}) async {
    final SharedPreferences pref = await initPrefs();

    if (T == String) {
      return pref.getString(key) as T?;
    } else if (T == int) {
      return pref.getInt(key) as T?;
    } else if (T == bool) {
      return pref.getBool(key) as T?;
    } else {
      return pref.getDouble(key) as T?;
    }
  }

  static clearPrefs() async {
    final SharedPreferences pref = await initPrefs();
    await pref.clear();
  }

  static removeKey(String key) async {
    final SharedPreferences pref = await initPrefs();
    await pref.remove(key);
  }
}
