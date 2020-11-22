import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.3:3000/api/auth';
}

class LoginService {
  Future<http.Response> loginUser(Map data) async {
    return await http.post('${URLS.BASE_URL}/signin', body: data);
  }

  Future<http.Response> verifySession(String token) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "x.access-token": token,
    };
    return await http.get('${URLS.BASE_URL}/verifySession',
        headers: requestHeaders);
  }

  Future<http.Response> getUser(String token) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "x.access-token": token,
    };
    return await http.get('${URLS.BASE_URL}/getUser/', headers: requestHeaders);
  }
}
