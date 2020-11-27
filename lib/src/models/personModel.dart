import '../models/userModel.dart';

class Person {
  String _id;
  String _name;
  String _lastName;
  int _age;
  double _size;
  User _userId;

  String get id => this._id;

  String get name => this._name;

  String get lastName => this._lastName;

  int get age => this._age;

  double get size => this._size;

  User get userId => this._userId;

  set id(String id) {
    _id = id;
  }

  set name(String name) {
    _name = name;
  }

  set lastName(String lastName) {
    _lastName = lastName;
  }

  set age(int age) {
    _age = age;
  }

  set size(double size) {
    _size = size;
  }

  set userId(User userId) {
    _userId = userId;
  }
}
