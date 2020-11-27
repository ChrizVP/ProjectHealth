import 'dart:convert';

import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:ProjectHealth/src/repository/personRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonBloc {
  SharedPreferences sharedPreferences;

  Future<Person> getPerson() async {
    Person _person = Person();
    sharedPreferences = await SharedPreferences.getInstance();
    var resPerson =
        await PersonRepository().getPerson(sharedPreferences.get('token'));
    if (resPerson.statusCode == 200) {
      var _resPerson = json.decode(resPerson.body);
      _person.name = _resPerson['name'];
      _person.lastName = _resPerson['lastName'];
      _person.age = _resPerson['age'];
      _person.size = _resPerson['size'];
      return _person;
    } else {
      return _person;
    }
  }

  Future<bool> createOrUpdatePerson(Person _person) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'name': _person.name,
      'lastName': _person.lastName,
      'age': _person.age.toString(),
      'size': _person.size.toString(),
    };
    var response = await PersonRepository()
        .createPerson(data, sharedPreferences.get('token'));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
