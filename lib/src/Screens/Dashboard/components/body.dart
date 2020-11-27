import 'package:ProjectHealth/src/Screens/Dashboard/components/reportScreen.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/homeScreen.dart';
import 'package:ProjectHealth/src/Screens/Dashboard/components/informationScreen.dart';
import 'package:ProjectHealth/src/Screens/Login/login_screen.dart';
import 'package:ProjectHealth/src/Screens/Profile/profileScreen.dart';
import 'package:ProjectHealth/src/blocs/loginBloc.dart';
import 'package:ProjectHealth/src/blocs/personBloc.dart';
import 'package:ProjectHealth/src/blocs/userBloc.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:ProjectHealth/src/models/userModel.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  final Weight weight;
  Body(this.weight);
  @override
  StateBody createState() => StateBody();
}

class StateBody extends State<Body> {
  SharedPreferences sharedPreferences;
  int _currentIndex = 0;
  User _user = User();
  Person _person = Person();

  logOut() async {
    var flagLogOut = await LoginBloc().logOut();
    if (flagLogOut) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
        ModalRoute.withName("/"),
      );
    }
  }

  getUser() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var resUser = await UserBloc().getUser();
    if (resUser != null) {
      setState(() {
        _user = resUser;
      });
    }
  }

  getPerson() async {
    var resPerson = await PersonBloc().getPerson();
    if (resPerson != null) {
      setState(() {
        _person = resPerson;
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
            title: Text('Report'),
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
      return HomeScreen(widget.weight);
    else if (index == 1)
      return ReportScreen(_person, widget.weight);
    else if (index == 2) return InformationScreen();
  }
}
