import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

abstract class BaseAuth {
  Future<String> signInWithEmailAndPassword(String email, String password);
  Future<String> createUserWithEmailAndPassword(String email, String password);
  Future<String> currentUser();
  Future<void> signOut();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signInWithEmailAndPassword(String email, String password) async {
    await Firebase.initializeApp();
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return user.user.uid;
  }

  Future<String> createUserWithEmailAndPassword(String email, String password) async {
    await Firebase.initializeApp();
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return user.user.uid;
  }

  Future<String> currentUser() async {
    await Firebase.initializeApp();
    User user = await FirebaseAuth.instance.currentUser;
    return user.uid;
  }

  Future<void> signOut() async {
    await Firebase.initializeApp();
    return _firebaseAuth.signOut();
  }
}