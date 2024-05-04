import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../firebase_options.dart';
import '../di/dependency_injection.dart';
import 'sharedprefs.dart';

class AppServices {
  static init() async {
    SharedPreferencesService.initSharedPrefs();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    setUpGetIt();
  }
}
