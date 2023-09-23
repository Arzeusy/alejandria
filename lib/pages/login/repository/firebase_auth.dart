import 'package:alejandria/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> registerWithEmail(Map<String, dynamic> data) async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: data["user"], password: data["password"]);
    debugPrint('movieTitle: $user');
  }

  Future<void> signInWithEmail(Map<String, dynamic> data) async {
    final user = await _auth.signInWithEmailAndPassword(
        email: data["user"], password: data["password"]);

    debugPrint('-----------------------: ');
    final token = await user.user?.getIdTokenResult();
    debugPrint('${user.additionalUserInfo?.username}');
    debugPrint('${token?.token}');
    debugPrint('${user.user?.email}');
    debugPrint('${user.user?.photoURL}');
    debugPrint('${user.user?.emailVerified}');
    debugPrint('-----------------------: ');

    objectBox.addUser(
        user.additionalUserInfo?.username as String,
        user.user?.email as String,
        token?.token as String,
        user.user?.photoURL as String,
        user.user?.emailVerified as bool);
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final user = await _auth.signInWithCredential(credential);

    debugPrint('movieTitle: $user');

    return user;
  }
}
