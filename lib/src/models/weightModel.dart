import '../models/userModel.dart';

class Weight {
  String _id;
  double _value;
  DateTime _date;
  User _userId;

  String get id => this._id;

  double get value => this._value;

  DateTime get date => this._date;

  User get userId => this._userId;

  set id(String id) {
    _id = id;
  }

  set value(double value) {
    _value = value;
  }

  set date(DateTime date) {
    _date = date;
  }

  set userId(User userId) {
    _userId = userId;
  }
}
