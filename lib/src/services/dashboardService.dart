import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.4:3000/api/auth';
}

class DashboardService {
  Future<http.Response> logout() async {
    return await http.get('${URLS.BASE_URL}/logout');
  }
}
