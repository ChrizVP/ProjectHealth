import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Signup/components/body.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _MyBodySignup createState() => _MyBodySignup();
}

class _MyBodySignup extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
