import 'package:ProjectHealth/src/Screens/Water/waterScreen.dart';
import 'package:ProjectHealth/src/Screens/Weight/weightScreen.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Weight weight;
  HomeScreen(this.weight);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: buildPadding("Weight"),
            ),
            buildGestureDetectorWeight(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: buildPadding("Water"),
            ),
            buildGestureDetectorWater(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: buildPadding("Heart Rate"),
            ),
            buildGestureDetectorHeartRate(),
          ],
        ),
      ),
    );
  }

  Text buildPadding(String _text) {
    return Text(
      _text,
    );
  }

  GestureDetector buildGestureDetectorWeight() {
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
                      child: Icon(Icons.line_weight_rounded),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                            //padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            color: Colors.greenAccent,
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return WeightScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Text(
                          (widget.weight.value != null
                                  ? widget.weight.value.toString()
                                  : "--") +
                              " Kg",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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

  GestureDetector buildGestureDetectorWater() {
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
                      child: Icon(Icons.local_drink),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: FlatButton(
                          //padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          color: Colors.greenAccent,
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WaterScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Text(
                          "0 glasses",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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

  GestureDetector buildGestureDetectorHeartRate() {
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
                      child: Icon(Icons.favorite),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: FlatButton(
                          //padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          color: Colors.greenAccent,
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Text(
                          "--/-- bpm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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
}
