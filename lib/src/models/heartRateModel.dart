import '../models/userModel.dart';

class HeartRate {
  String _value;
  DateTime _date;
  User _userId;

  HeartRate(heartRate) {
    _value = heartRate['value'];
    _date = heartRate['date'];
    _userId = heartRate['userId'];
  }

  String get value => _value;

  DateTime get date => _date;

  User get userId => _userId;
}
