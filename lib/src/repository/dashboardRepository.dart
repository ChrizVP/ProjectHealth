import 'package:http/http.dart' as http;
import 'package:ProjectHealth/src/services/dashboardService.dart';

class LogoutRepository {
  final dashboardService = DashboardService();

  Future<http.Response> logout() => dashboardService.logout();
}
