import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitPageController extends GetxController {
  Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

//Guardar estado de initial

  getPrefs() async {
    SharedPreferences prefs = await _preferences;
    bool state = prefs.getBool("key");
    return state;
  }
}
