import '../models/userModel.dart';

class Weight {
  String _value;
  DateTime _date;
  User _userId;

  Weight(weight) {
    _value = weight['value'];
    _date = weight['date'];
    _userId = weight['userId'];
  }

  String get value => _value;

  DateTime get date => _date;

  User get userId => _userId;
}
