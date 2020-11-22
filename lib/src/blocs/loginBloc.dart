import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';

class LoginBloc {
  final LoginRepository _loginRepository = LoginRepository();
  final BehaviorSubject<Response> _subject = BehaviorSubject<Response>();

  login(data) async {
    Response response = await _loginRepository.loginUser(data);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Response> get subject => _subject;
}

final loginBloc = LoginBloc();
