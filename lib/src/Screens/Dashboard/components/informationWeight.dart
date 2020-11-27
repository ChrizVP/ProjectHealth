import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationWeightScreen extends StatefulWidget {
  final Person person;
  final Weight weight;
  InformationWeightScreen(this.person, this.weight);
  @override
  _InformationWeightState createState() => _InformationWeightState();
}

class _InformationWeightState extends State<InformationWeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        title: Text('Information', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.greenAccent,
          ),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (BuildContext context) => DashboardScreen()),
                (Route<dynamic> route) => false);
            // Navigator.pushReplacement(context, MaterialPageRoute(
            //   builder: (context) {
            //     return DashboardScreen();
            //     //ComunityScreen(widget.person, widget.weight);
            //   },
            // ));
          },
        ),
      ),
      body: Container(
        width: 485,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "About BMI",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "The body mass index (BMI) is a simple indicator of the relationship between weight and height that is frequently used to identify overweight and obesity in adults. It is calculated by dividing the weight of a person in kilos by the square of her height in meters (kg / m2).",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Calculate BMI: 65.0 Kg/1.65 m2 = 23.9",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              width: 480,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                  "https://i.ibb.co/vDPMB1F/Screenshot-20201125-002017-Samsung-Health.jpg",
                )),
                //borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                " About body fat percentage",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                " the percentage of body fat is the amount of body fat expressed as a proportion of body weight. This value provides more information about your body composition than BMI, since BMI does not distinguish between body fat and muscle mass. The percentage of body fat can be determined by a series of methods and varies for each individual according to their sex, age, height and weight.",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
