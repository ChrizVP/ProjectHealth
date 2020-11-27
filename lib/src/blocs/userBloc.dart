import 'dart:convert';

import 'package:ProjectHealth/src/models/userModel.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserBloc {
  SharedPreferences sharedPreferences;

  Future<User> getUser() async {
    User _user = User();
    sharedPreferences = await SharedPreferences.getInstance();
    var resUser =
        await LoginRepository().getUser(sharedPreferences.get('token'));
    if (resUser.statusCode == 200) {
      var _resUser = json.decode(resUser.body);
      _user.username = _resUser['username'];
      _user.email = _resUser['email'];
      return _user;
    } else {
      return _user;
    }
  }
}
