import 'package:ProjectHealth/src/services/weightService.dart';
import 'package:http/http.dart' as http;

class WeightRepository {
  final weightService = WeightService();

  Future<http.Response> createWeight(Map data, String token) =>
      weightService.createWeight(data, token);

  Future<http.Response> getWeight(String token) =>
      weightService.getWeight(token);
}
