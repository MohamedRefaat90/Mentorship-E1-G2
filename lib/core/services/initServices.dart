import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';
import '../di/dependency_injection.dart';

class AppServices {
  static init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    setUpGetIt();
  }
}
