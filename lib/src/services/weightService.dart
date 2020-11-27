import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.6:3000/api/measurement';
}

class WeightService {
  Future<http.Response> createWeight(Map data, String token) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      "x.access-token": token,
    };
    return await http.post('${URLS.BASE_URL}/weight/',
        body: data, headers: requestHeaders);
  }

  Future<http.Response> getWeight(String token) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "x.access-token": token,
    };
    return await http.get('${URLS.BASE_URL}/weight/', headers: requestHeaders);
  }
}
