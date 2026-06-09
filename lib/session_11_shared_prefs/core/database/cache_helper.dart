import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  //create obj
  static late SharedPreferencesWithCache prefs;

  static Future<void> init() async {
    prefs = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(
        allowList: {
          CacheHelperKeys.nameKey,
          CacheHelperKeys.emailKey,
          CacheHelperKeys.jobTitleKey,
          CacheHelperKeys.bioKey,
          CacheHelperKeys.isDarkKey,
          CacheHelperKeys.isArabicKey,
        },
      ),
    );
  }

  //save
  static Future<void> saveBool(String key, bool value) async {
    await prefs.setBool(key, value);
  }

  static Future<void> saveString(String key, String value) async {
    await prefs.setString(key, value);
  }

  static Future<void> saveInt(String key, int value) async {
    await prefs.setInt(key, value);
  }

  static Future<void> saveDouble(String key, double value) async {
    await prefs.setDouble(key, value);
  }

  //save list of strings
  static Future<void> saveStringList(String key, List<String> value) async {
    await prefs.setStringList(key, value);
  }

  //get
  static Future<bool?> getBool(String key) async {
    return prefs.getBool(key);
  }

  static Future<String?> getString(String key) async {
    return prefs.getString(key);
  }

  static Future<int?> getInt(String key) async {
    return prefs.getInt(key);
  }

  static Future<double?> getDouble(String key) async {
    return prefs.getDouble(key);
  }

  static Future<List<String>?> getStringList(String key) async {
    return prefs.getStringList(key);
  }

  //remove - clear
  static Future<void> remove(String key) async {
    await prefs.remove(key);
  }

  static Future<void> clear() async {
    await prefs.clear();
  }
}

class CacheHelperKeys {
  static const String nameKey = "name";
  static const String emailKey = "email";
  static const String jobTitleKey = "jobTitle";
  static const String bioKey = "bio";
  static const String isDarkKey = "isDark";
  static const String isArabicKey = "isArabic";

}
