import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';


class PreferencesService {
  static late SharedPreferences _preferences;


  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

    static SharedPreferences get _instance {
    if (_preferences == null) {
      throw Exception("PreferencesService not initialized. Call init() first.");
    }
    return _preferences!;
  }

  static bool get isFirstTime => _preferences.getBool('first_time') ?? true;

  

  Future setCartCount(int cartCount) async {
     cartCount = _preferences.getInt("cart_count") ?? 0;
     await _preferences.setInt("cart_count", cartCount);
  }

  int getCartCount() {
    return _preferences.getInt("cart_count") ?? 0;
  }

  static set isFirstTime(bool value) {
    _preferences.setBool('first_time', value);
  }
}
