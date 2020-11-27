import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/components/rounded_button.dart';
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
  int contMililitros = 0;
  int contGlasses = 0;

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
              height: 70,
            ),
            Container(
              width: 250,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  color: Colors.blue[100],
                  onPressed: () {},
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: IconButton(
                      iconSize: 62.0,
                      color: Colors.greenAccent,
                      onPressed: () {
                        setState(() {
                          if (contGlasses > 0) {
                            contGlasses = contGlasses - 1;
                            contMililitros -= 250;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.thumb_down,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Icon(
                      Icons.local_drink,
                      size: 180,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: IconButton(
                      iconSize: 62.0,
                      color: Colors.greenAccent,
                      onPressed: () {
                        setState(() {
                          contGlasses = contGlasses + 1;
                          contMililitros += 250;
                        });
                      },
                      icon: Icon(
                        Icons.thumb_up,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Text(
                contGlasses.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              child: Text(
                "glasses",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                (contMililitros.toString() + " ml"),
                style: TextStyle(
                  fontSize: 15,
                ),
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
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
