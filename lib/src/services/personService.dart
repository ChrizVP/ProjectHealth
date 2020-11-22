import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'http://192.168.1.3:3000/api/person';
}

class PersonService {
  Future<http.Response> createPerson(Map data) async {
    return await http.post('${URLS.BASE_URL}/', body: data);
  }

  Future<http.Response> getPerson(String token) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "x.access-token": token,
    };
    return await http.get('${URLS.BASE_URL}/', headers: requestHeaders);
  }

  Future<http.Response> getPersonById(String _id) async {
    return await http.get('${URLS.BASE_URL}/$_id');
  }

  Future<http.Response> updatePersonById(String _id, Map data) async {
    return await http.put('${URLS.BASE_URL}/$_id', body: data);
  }

  Future<http.Response> deletePersonById(String _id) async {
    return await http.delete('${URLS.BASE_URL}/$_id');
  }
}
