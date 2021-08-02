import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  Auth._internal();
  static Auth get instance => Auth._internal();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSighIn = GoogleSignIn();

  Future<User> get user async {
    return (await _firebaseAuth.currentUser);
  }

  Future<void> google() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSighIn.signIn();
      final GoogleSignInAuthentication authentication =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: authentication.idToken,
          accessToken: authentication.accessToken);

      final UserCredential result =
          await _firebaseAuth.signInWithCredential(credential);

      final User user = result.user;

      print(user);
    } catch (e) {}
  }
}
