import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferences? sharedPreferences;
  static initSharedPrefs() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static saveUserID(String userID) async {
    sharedPreferences!.setString("userID", userID);
  }

  static String? getUserID() {
    return sharedPreferences!.getString('userID');
  }

  static deleteUserID() async {
    sharedPreferences!.remove("userID");
  }

  static bool? isFirstTime() {
    return sharedPreferences!.getBool("isFirstTime");
  }
}
