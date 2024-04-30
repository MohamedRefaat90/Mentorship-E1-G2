import 'package:firebase_auth/firebase_auth.dart';

class NoSocialAccountSelected implements Exception {}

class AuthExceptionHandler {
  static String handleException(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return 'The Password Provided is Too Weak.';
      case 'email-already-in-use':
        return 'The Email Address is Already in Use By Another Account.';
      case 'invalid-email':
        return 'The Email Address is Invalid.';
      case 'invalid-phone-number':
        return 'The Phone Number is Not Valid.';
      case 'user-disabled':
        return 'The Email Address is Disabled.';
      case 'user-not-found':
        return 'User Not Found';
      case 'account-exists-with-different-credential':
        return "Account Exists With Different Social Network";
      case 'invalid-verification-code':
        return "The OTP Code is Invalid. Please Check And Enter The correct OTP Code Again.";

      default:
        return "Try Again Later";
    }
  }
}
