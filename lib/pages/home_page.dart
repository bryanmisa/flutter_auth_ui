import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final currentuser = FirebaseAuth.instance.currentUser!;
  // signUserOut
  signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'You are logged in as: ${currentuser.email!}',
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
