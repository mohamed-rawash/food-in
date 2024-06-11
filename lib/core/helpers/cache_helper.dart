import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheHelper {
  static SharedPreferences? _preferences;

  static init() async {
    _preferences = await SharedPreferences.getInstance();
  }

 static Future<bool?>? saveCacheData({required String key, required value}) async {
    print(value.runtimeType.toString());
    print(value);
    try {
      if(value is String) {
        await  _preferences?.setString(key, value);
        return true;
      }
      if(value is int) {
        await  _preferences?.setInt(key, value);
        return true;
      }
      if(value is double) {
        await  _preferences?.setDouble(key, value);
        return true;
      }
      if(value is bool) {
        await  _preferences?.setBool(key, value);
        return true;
      }
      await _preferences?.setStringList(key, value);
       return true;
    } catch (e) {
      print(e.toString());
    }
  }

  static Object? getCacheData({required String key}) {
    return  _preferences?.get(key);
  }

  static Future<bool> deleteCacheData({required String key}) async {
    return await _preferences!.remove(key);
  }
}