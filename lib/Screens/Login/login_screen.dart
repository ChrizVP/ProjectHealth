import 'package:ProjectHealth/Screens/Login/components/body.dart';
import 'package:flutter/material.dart';

//class LoginScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Body(),
//    );
//  }
//}

class LoginScreen extends StatefulWidget {
  @override
  _MyBodyLogin createState() => _MyBodyLogin();
}

class _MyBodyLogin extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
