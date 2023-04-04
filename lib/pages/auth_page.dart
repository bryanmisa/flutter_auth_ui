// run the command
// flutter pub add firebase_auth
// to add the firebase_auth packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/login_page.dart';

import 'home_page.dart';
import 'login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          // is user logged in?
          if (snapshot.hasData) {
            return HomePage();
          }
          // is user NOT logged in
          else {
            return LoginOrRegisterPage();
          }
        }),
      ),
    );
  }
}
