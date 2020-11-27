import 'dart:convert';

import 'package:ProjectHealth/src/repository/dashboardRepository.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';
import 'package:ProjectHealth/src/repository/signupRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc {
  SharedPreferences sharedPreferences;

  Future<bool> checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var response =
        await LoginRepository().verifySession(sharedPreferences.get('token'));
    if (response.statusCode == 200) {
      return true;
    } else {
      if (sharedPreferences.get('token') != null) {
        sharedPreferences.setString("token", null);
      }
      return false;
    }
  }

  Future<bool> signIn(String email, password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': password};
    // ignore: avoid_init_to_null
    var jsonResponse = null;

    var response = await LoginRepository().loginUser(data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        sharedPreferences.setString("token", jsonResponse['token']);
      }
      return true;
    } else {
      return false;
    }
  }

  Future<bool> signUp(String username, email, password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': username, 'email': email, 'password': password};
    // ignore: avoid_init_to_null
    var jsonResponse = null;

    var response = await SignupRepository().signupUser(data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        sharedPreferences.setString("token", jsonResponse['token']);
      }
      return true;
    } else {
      return false;
    }
  }

  Future<bool> logOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // ignore: avoid_init_to_null
    var jsonResponse = null;
    var response = await LogoutRepository().logout();
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      sharedPreferences.setString("token", jsonResponse['token']);
      return true;
    } else {
      return false;
    }
  }
}
