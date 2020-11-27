import 'package:ProjectHealth/src/Screens/Dashboard/components/informationWeight.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportScreen extends StatefulWidget {
  final Person person;
  final Weight weight;
  ReportScreen(this.person, this.weight);
  @override
  _MyReportScreen createState() => _MyReportScreen();
}

class _MyReportScreen extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Container(
                height: 100,
                width: 450,
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle_sharp,
                      size: 60,
                    ),
                    containerText(widget.person.name),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: buildGestureDetectorReportWeight(
                  widget.person.size, widget.weight.value),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: buildGestureDetectorReportWater(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: buildGestureDetectorReportHeartRate(),
            ),
          ],
        ),
      ),
    );
  }

  Container containerText(String name) {
    return Container(
      child: Text(
        "Hi, " + (name != null ? name : " "),
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  GestureDetector buildGestureDetectorReportWeight(double size, double weight) {
    double _bmiColor = 65.0;
    var _bmi;
    if (size != null && weight != null) {
      _bmi = double.parse((weight / (size * size)).toStringAsFixed(1));
      _bmiColor = _bmi;
    }
    var formatter = new DateFormat('dd-MM-yyyy');

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return InformationWeightScreen(widget.person, widget.weight);
        }));
      },
      child: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                width: 450,
                height: 180,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          "Report Weight",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 175,
                          vertical: 0,
                        ),
                        child: Text(
                          (widget.weight.date != null
                              ? formatter.format(widget.weight.date).toString()
                              : " Register your Weight "),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 150,
                          vertical: 5,
                        ),
                        child: Text(
                          (weight != null
                              ? "Weight: " + weight.toString()
                              : " "),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 150,
                          vertical: 5,
                        ),
                        child: Text(
                          (_bmi != null
                              ? "BMI: " + _bmi.toString()
                              : " Register size"),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: (_bmiColor < 18.5
                                ? Colors.blue[400]
                                : _bmiColor >= 18.5 && _bmiColor < 25
                                    ? Colors.green
                                    : _bmiColor >= 25 && _bmiColor < 30
                                        ? Colors.amber
                                        : Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //child: Text('Homee'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildGestureDetectorReportWater() {
    return GestureDetector(
      child: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                width: 450,
                height: 150,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          "Report Water",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 195),
                            child: Icon(
                              Icons.local_drink,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "glasses",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "0 ml",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                //child: Text('Homee'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildGestureDetectorReportHeartRate() {
    return GestureDetector(
      child: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                width: 450,
                height: 150,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          "Report Heart Rate",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "Register your Heart Rate",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                //child: Text('Homee'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: unused_element

}
