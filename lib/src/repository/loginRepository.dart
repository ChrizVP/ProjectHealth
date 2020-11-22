import 'package:http/http.dart' as http;
import 'package:ProjectHealth/src/services/loginService.dart';

class LoginRepository {
  final loginService = LoginService();

  Future<http.Response> loginUser(Map data) => loginService.loginUser(data);

  Future<http.Response> verifySession(String token) =>
      loginService.verifySession(token);

  Future<http.Response> getUser(String token) => loginService.getUser(token);
}
