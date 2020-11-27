import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/blocs/weightBloc.dart';
import 'package:ProjectHealth/src/components/rounded_button.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  DateTime _date = DateTime.now();
  var formatter = new DateFormat('dd-MM-yyyy');
  Weight weight = Weight();
  double _weight = 65.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Weight', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        width: 483,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              width: 250,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  color: Colors.blue[100],
                  onPressed: () {
                    selectDate(context);
                  },
                  child: Text(
                    //_date.toString(),
                    formatter.format(_date).toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Weight",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    _weight.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Slider(
                    value: _weight,
                    onChanged: (value) {
                      setState(() {
                        _weight = double.parse(value.toStringAsFixed(1));
                        weight.value = _weight;
                      });
                    },
                    min: 0,
                    max: 300,
                  ),
                ],
              ),
            ),

            // =============
            SizedBox(
              height: 100,
            ),
            RoundedButton(
              color: Colors.red,
              text: "CANCEL",
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return DashboardScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SAVE",
              press: () {
                weight.date = _date;
                createWeight(weight);
              },
            ),
          ],
        ),
      ),
    );
  }

  createWeight(Weight _weight) async {
    var flagWeight = await WeightBloc().createWeight(_weight);
    if (flagWeight) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (BuildContext context) => DashboardScreen()),
          (Route<dynamic> route) => false);
    }
  }

  Future<Null> selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (context, child) => Theme(
              data: ThemeData(
                primaryColor: Colors.greenAccent,
              ),
              child: child,
            ));

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    }
  }
}
