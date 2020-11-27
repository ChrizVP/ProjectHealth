import 'package:ProjectHealth/src/blocs/weightBloc.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/body.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _MyBodyDashboard createState() => _MyBodyDashboard();
}

class _MyBodyDashboard extends State<DashboardScreen> {
  Weight weight = Weight();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(weight),
    );
  }

  @override
  void initState() {
    super.initState();
    this.getWeight();
  }

  getWeight() async {
    var _weight = await WeightBloc().getWeight();
    if (_weight != null) {
      setState(() {
        weight = _weight;
      });
    }
  }
}
