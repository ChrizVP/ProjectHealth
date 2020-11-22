import 'package:http/http.dart' as http;
import 'package:ProjectHealth/src/services/personService.dart';

class PersonRepository {
  final personService = PersonService();

  Future<http.Response> createPerson(Map data) =>
      personService.createPerson(data);

  Future<http.Response> getPerson(String token) =>
      personService.getPerson(token);

  Future<http.Response> getPersonById(String _id) =>
      personService.getPersonById(_id);

  Future<http.Response> updatePersonById(String _id, Map data) =>
      personService.updatePersonById(_id, data);

  Future<http.Response> deletePersonById(String _id) =>
      personService.deletePersonById(_id);
}
