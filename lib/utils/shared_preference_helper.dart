// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:weather/conf/sp_keys/shared_preference_constants.dart';

class MySPHelper {
  //
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //

  static int? get id => _prefs.getInt(MySPKeys.id);
  static set id(int? value) => _setData(MySPKeys.id, value);

  static String get lang => _prefs.getString(MySPKeys.lang) ?? 'ru';
  static set lang(String value) => _setData(MySPKeys.lang, value);

  //

  static bool get askedLocationPermission =>
      _prefs.getBool(MySPKeys.hasLocationPermission) ?? false;
  static set askedLocationPermission(bool? value) =>
      _setData(MySPKeys.hasLocationPermission, value);

  static bool get isCustomLocation =>
      _prefs.getBool(MySPKeys.isCustomLocation) ?? false;
  static set isCustomLocation(bool? value) =>
      _setData(MySPKeys.isCustomLocation, value);

  //

  static int get version => _prefs.getInt(MySPKeys.version) ?? 1;
  static set version(int value) => _setData(MySPKeys.version, value);

  static bool get isFirstStart => _prefs.getBool(MySPKeys.isFirstStart) ?? true;
  static set isFirstStart(bool value) => _setData(MySPKeys.isFirstStart, value);

  //

  static Future<bool> clear() => _prefs.clear();

  static Future<void> logout() async {
    final lang = MySPHelper.lang;
    final version = MySPHelper.version;
    final isFirstStart = MySPHelper.isFirstStart;

    await clear();

    MySPHelper.lang = lang;
    MySPHelper.version = version;
    MySPHelper.isFirstStart = isFirstStart;
  }

  //

  static _setData(String key, dynamic value) {
    if (value == null) {
      _prefs.remove(key);
    } else if (value is String) {
      _prefs.setString(key, value);
    } else if (value is bool) {
      _prefs.setBool(key, value);
    } else if (value is int) {
      _prefs.setInt(key, value);
    } else if (value is List<String>) {
      _prefs.setStringList(key, value);
    } else {}
  }
}
