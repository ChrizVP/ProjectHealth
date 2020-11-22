import 'package:ProjectHealth/src/Screens/Dashboard/components/comunityScreen.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/homeScreen.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/informationScreen.dart';
import 'package:ProjectHealth/src/Screens/Login/login_screen.dart';
import 'package:ProjectHealth/src/Screens/Profile/profileScreen.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:ProjectHealth/src/models/userModel.dart';
import 'package:ProjectHealth/src/repository/dashboardRepository.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';
import 'package:ProjectHealth/src/repository/personRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

class Body extends StatefulWidget {
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  SharedPreferences sharedPreferences;
  int _currentIndex = 0;
  User _user = User();
  Person _person = Person();

  logOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // ignore: avoid_init_to_null
    var jsonResponse = null;

    var response = await LogoutRepository().logout();
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      sharedPreferences.setString("token", jsonResponse['token']);
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
        ModalRoute.withName("/"),
      );
    }
  }

  void getUser() async {
    sharedPreferences = await SharedPreferences.getInstance();
    //var resPerson = await PersonRepository().getPerson(sharedPreferences.get('token'));
    var resUser =
        await LoginRepository().getUser(sharedPreferences.get('token'));
    if (resUser.statusCode == 200) {
      setState(() {
        var _resUser = json.decode(resUser.body);
        _user.username = _resUser['username'];
        _user.email = _resUser['email'];
      });
    }
  }

  void getPerson() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var resPerson =
        await PersonRepository().getPerson(sharedPreferences.get('token'));
    if (resPerson.statusCode == 200) {
      setState(() {
        var _resPerson = json.decode(resPerson.body);
        _person.name = _resPerson[0]['name'];
        _person.lastName = _resPerson[0]['lastName'];
        _person.age = _resPerson[0]['age'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this.getPerson();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Chriz Health', style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              accountName: Text(_user.username != null ? _user.username : " "),
              accountEmail: Text(_user.email != null ? _user.email : " "),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(
                  'S',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Registrar Datos'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ProfileScreen(
                    _person,
                  );
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                logOut();
              },
            ),
          ],
        ),
      ),

      // -- start card

      body: buildContainer(_currentIndex),
      // -- end card

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            // ignore: deprecated_member_use
            title: Text('Home'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            // ignore: deprecated_member_use
            title: Text('Comunity'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_sharp),
            // ignore: deprecated_member_use
            title: Text('Information'),
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  // ignore: missing_return
  Widget buildContainer(int index) {
    if (index == 0)
      return HomeScreen();
    else if (index == 1)
      return ComunityScreen(
        _person.name,
      );
    else if (index == 2) return InformationScreen();
  }
}
