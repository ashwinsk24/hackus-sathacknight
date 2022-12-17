import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memory_notes/home_screen.dart';
import 'package:memory_notes/login_screen.dart';

class AuthService {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }

  //authsignout
  signOut() {
    FirebaseAuth.instance.signOut();
  }

//authsignin
  signIn(email, password) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((user) {
      print('Signed in');
    }).catchError((e) {
      print(e);
    });
  }
}
