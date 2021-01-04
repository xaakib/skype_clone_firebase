import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone_firebase/resources/firebase_repository.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseRepository _repository = FirebaseRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginButton(),
    );
  }

  Widget loginButton() {
    return FlatButton(
      onPressed: () => performLogin,
      child: Text(
        "LOGIN",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  void performLogin() {
    _repository.signIn().then((FirebaseUser user) {
      if (user != null) {
        authenticateUser(user);
      } else {
        print("There was an error");
      }
    });
  }

  void authenticateUser(FirebaseUser user) {}
}
