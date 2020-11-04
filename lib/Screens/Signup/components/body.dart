import 'package:ProjectHealth/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/Screens/Signup/services/signupService.dart';
import 'package:flutter/material.dart';
import 'package:ProjectHealth/Screens/Login/login_screen.dart';
import 'package:ProjectHealth/Screens/Signup/components/background.dart';
import 'package:ProjectHealth/Screens/Signup/components/or_divider.dart';
import 'package:ProjectHealth/Screens/Signup/components/social_icon.dart';
import 'package:ProjectHealth/components/already_have_an_account_acheck.dart';
import 'package:ProjectHealth/components/rounded_button.dart';
import 'package:ProjectHealth/components/rounded_input_field.dart';
import 'package:ProjectHealth/components/rounded_password_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Body extends StatefulWidget {
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  String username = "", email = "", password = "";

  signUp(String username, email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': username, 'email': email, 'password': pass};
    // ignore: avoid_init_to_null
    var jsonResponse = null;

    var response = await SignupService().signupUser(data);
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Username",
              onChanged: (value) {
                username = value;
              },
            ),
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
              text: "SIGNUP",
              press: () {
                if (username != "" && email != "" && password != "") {
                  signUp(username, email, password);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
