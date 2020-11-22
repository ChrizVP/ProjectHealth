class User {
  String _id;
  String _username;
  String _email;
  String _password;

  String get id => this._id;

  String get username => this._username;

  String get email => this._email;

  String get password => this._password;

  set id(String id) {
    _id = id;
  }

  set username(String username) {
    _username = username;
  }

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }
}
