import '../models/userModel.dart';

class Water {
  String _value;
  DateTime _date;
  User _userId;

  Water(water) {
    _value = water['value'];
    _date = water['date'];
    _userId = water['userId'];
  }

  String get value => _value;

  DateTime get date => _date;

  User get userId => _userId;
}
