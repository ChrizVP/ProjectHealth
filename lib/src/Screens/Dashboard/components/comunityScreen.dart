import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComunityScreen extends StatefulWidget {
  final String name;
  ComunityScreen(this.name);
  @override
  _MyComunityScreen createState() => _MyComunityScreen();
}

class _MyComunityScreen extends State<ComunityScreen> {
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
                    containerText(widget.name),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: buildGestureDetectorConteoPasos(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: buildGestureDetectorAmigos(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: buildGestureDetectorDesafios(),
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

  GestureDetector buildGestureDetectorConteoPasos() {
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
                          horizontal: 80,
                          vertical: 5,
                        ),
                        child: Text(
                          "Step count for the last 7 days",
                          style: TextStyle(
                            fontSize: 15,
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

  GestureDetector buildGestureDetectorAmigos() {
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
                          "Friends",
                          style: TextStyle(
                            fontSize: 15,
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

  GestureDetector buildGestureDetectorDesafios() {
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
                          "Challenges",
                          style: TextStyle(
                            fontSize: 15,
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
