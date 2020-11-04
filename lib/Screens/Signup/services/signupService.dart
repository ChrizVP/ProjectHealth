import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.3:3000';
}

class SignupService {
  Future<http.Response> signupUser(Map data) async {
    return await http.post('${URLS.BASE_URL}/signup', body: data);
  }
}
