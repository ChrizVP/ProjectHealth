import 'package:http/http.dart' as http;
import 'package:ProjectHealth/src/services/signupService.dart';

class SignupRepository {
  final signupService = SignupService();

  Future<http.Response> signupUser(Map data) => signupService.signupUser(data);
}
