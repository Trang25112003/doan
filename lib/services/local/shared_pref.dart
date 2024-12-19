import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_model.dart';
//lu du lieu khi tat app dung trang nay
class SharedPrefs {
  static const String checkAccess = 'checkAccess';
  static const String userKey = 'user';

  static late SharedPreferences _prefs;  

  static Future<void> initialise() async { //method static goi thong qua ten class va chi  1 vung nho (neu k dung static thi moi lan dung phai new doi tuong)
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isAccessed => _prefs.getBool(checkAccess) ?? false;

  static set isAccessed(bool value) => _prefs.setBool(checkAccess, value);

  static bool get isLogin {
    String? data = _prefs.getString(userKey);
    if (data == null) return false;
    return true;
  }

  static UserModel? get user {
    String? data = _prefs.getString(userKey);
    if (data == null) return null;
    return UserModel.fromJson(jsonDecode(data));
  }

  static set user(UserModel? user) {
    _prefs.setString(userKey, jsonEncode(user?.toJson()));
  }

  static removeSeason() {
    _prefs.remove(userKey);
  }
}
