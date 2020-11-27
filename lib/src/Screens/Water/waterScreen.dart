import 'package:ProjectHealth/src/Screens/Water/body/body.dart';
import 'package:flutter/material.dart';

class WaterScreen extends StatefulWidget {
  @override
  _MyBodyWater createState() => _MyBodyWater();
}

class _MyBodyWater extends State<WaterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
