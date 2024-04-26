import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mentorship_e1_g3/core/routing/app_routing.dart';
import 'package:mentorship_e1_g3/features/home/presentation/screen/home_screen.dart';

abstract interface class LoginBySocial {
  login();
}

class GoogleLogin implements LoginBySocial {
  @override
  login() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((user) => push(const HomeScreen()));
  }
}
