import 'package:ProjectHealth/src/Screens/Dashboard/dashboard_screen.dart';
import 'package:ProjectHealth/src/blocs/loginBloc.dart';
import 'package:flutter/material.dart';
import 'package:ProjectHealth/src/Screens/Login/login_screen.dart';
import 'package:ProjectHealth/src/Screens/Signup/components/background.dart';
import 'package:ProjectHealth/src/Screens/Signup/components/or_divider.dart';
import 'package:ProjectHealth/src/Screens/Signup/components/social_icon.dart';
import 'package:ProjectHealth/src/components/already_have_an_account_acheck.dart';
import 'package:ProjectHealth/src/components/rounded_button.dart';
import 'package:ProjectHealth/src/components/rounded_input_field.dart';
import 'package:ProjectHealth/src/components/rounded_password_field.dart';

class Body extends StatefulWidget {
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  String username = "", email = "", password = "";

  signUp(String username, String email, String password) async {
    var flagSignUp = await LoginBloc().signUp(username, email, password);
    if (flagSignUp) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (BuildContext context) => DashboardScreen()),
          (Route<dynamic> route) => false);
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
