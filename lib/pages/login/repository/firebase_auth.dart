import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

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

    debugPrint('movieTitle: $user');
  }
}
