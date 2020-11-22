import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/Screens/Signup/signup_screen.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';
import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Login/components/background.dart';
import 'package:ProjectHealth/src/components/already_have_an_account_acheck.dart';
import 'package:ProjectHealth/src/components/rounded_button.dart';
import 'package:ProjectHealth/src/components/rounded_input_field.dart';
import 'package:ProjectHealth/src/components/rounded_password_field.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Body extends StatefulWidget {
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  String email = "";
  String password = "";

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass};
    // ignore: avoid_init_to_null
    var jsonResponse = null;

    var response = await LoginRepository().loginUser(data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => DashboardScreen()),
            (Route<dynamic> route) => false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (email != "" && password != "") {
                  signIn(email, password);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
