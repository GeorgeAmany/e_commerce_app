import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _ref;

  static Future<void> init() async {
    _ref = await SharedPreferences.getInstance();
  }

  static Future<bool> saveIsFirstTime (){
    return _ref.setBool('isFirstTime', false);
  }

  static bool getIsFirstTime(){
    return _ref.getBool('isFirstTime')??true;
  }
}
