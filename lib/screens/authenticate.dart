import 'package:chat_application/screens/home_screen.dart';
import 'package:chat_application/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if(_auth.currentUser !=null){
         return const HomeScreen();
    }
    else
      {
        return const LoginScreen();
      }
  }
}
