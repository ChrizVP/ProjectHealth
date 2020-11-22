import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Profile/components/body.dart';

class ProfileScreen extends StatefulWidget {
  final Person person;
  ProfileScreen(this.person);
  @override
  _MyBodyProfile createState() => _MyBodyProfile();
}

class _MyBodyProfile extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(widget.person),
    );
  }
}
