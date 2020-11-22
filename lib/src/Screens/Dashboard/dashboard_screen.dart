import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/body.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _MyBodyDashboard createState() => _MyBodyDashboard();
}

class _MyBodyDashboard extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
