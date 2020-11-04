import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.3:3000';
}

class LoginService {
  Future<http.Response> loginUser(Map data) async {
    return await http.post('${URLS.BASE_URL}/signin', body: data);
  }

  Future<http.Response> getUserToken() async {
    return await http.get('${URLS.BASE_URL}/userGetToken');
  }
}
