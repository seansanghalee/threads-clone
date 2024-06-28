import 'package:shared_preferences/shared_preferences.dart';

class SettingsConfigRepository {
  static const _isDarkMode = "darkMode";

  SharedPreferences preferences;

  SettingsConfigRepository({required this.preferences});

  Future<void> setDarkMode(bool value) async {
    preferences.setBool(_isDarkMode, value);
  }

  bool isDarkMode() {
    return preferences.getBool(_isDarkMode) ?? false;
  }
}
