import 'package:ProjectHealth/src/Screens/Weight/body/body.dart';
import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  @override
  _MyBodyWeight createState() => _MyBodyWeight();
}

class _MyBodyWeight extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
