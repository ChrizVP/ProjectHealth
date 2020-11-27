import 'dart:async';

import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/Screens/Profile/profileScreen.dart';
import 'package:ProjectHealth/src/blocs/personBloc.dart';
import 'package:ProjectHealth/src/components/rounded_button.dart';
import 'package:ProjectHealth/src/components/text_field_input.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Person person;
  Body(this.person);
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  Person _person = Person();

  @override
  void initState() {
    _person.name = widget.person.name;
    _person.lastName = widget.person.lastName;
    _person.age = widget.person.age;
    _person.size = widget.person.size;
    super.initState();
  }

  createOrUpdatePerson(Person _person) async {
    var flagPerson = await PersonBloc().createOrUpdatePerson(_person);
    if (flagPerson) {
      _showAlertSuccess(context);
      Timer(
          Duration(seconds: 1),
          () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfileScreen(_person)),
              (Route<dynamic> route) => false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.greenAccent,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return DashboardScreen();
            }));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: <Widget>[
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://yt3.ggpht.com/ytc/AAUvwngdhY_xfAwbZeKIgiHT-zL6n71LIOG5wh-I_rQ3GA=s900-c-k-c0x00ffffff-no-rj",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.greenAccent,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextFieldInput(
                labelText: "Name",
                placeholder:
                    (widget.person.name != null ? widget.person.name : " "),
                onChanged: (value) {
                  setState(() {
                    _person.name = value;
                  });
                },
              ),
              TextFieldInput(
                labelText: "Last Name",
                placeholder: (widget.person.lastName != null
                    ? widget.person.lastName
                    : " "),
                onChanged: (value) {
                  setState(() {
                    _person.lastName = value;
                  });
                },
              ),
              TextFieldInput(
                labelText: "Age",
                placeholder: (widget.person.age != null
                    ? widget.person.age.toString()
                    : " "),
                onChanged: (value) {
                  setState(() {
                    _person.age = int.parse(value);
                  });
                },
              ),
              TextFieldInput(
                labelText: "Size",
                placeholder: (widget.person.size != null
                    ? widget.person.size.toString()
                    : " "),
                onChanged: (value) {
                  setState(() {
                    _person.size = double.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 10,
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
                  if (widget.person.name != _person.name ||
                      widget.person.lastName != _person.lastName ||
                      widget.person.age != _person.age ||
                      widget.person.size != _person.size) {
                    createOrUpdatePerson(_person);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showAlertSuccess(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text("Updated Successfully"),
        ),
        content: Icon(
          Icons.check_circle,
          color: Colors.greenAccent,
          size: 80,
        ),
      ),
    );
  }
}
