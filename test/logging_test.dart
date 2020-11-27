import 'package:ProjectHealth/src/blocs/loginBloc.dart';
import 'package:ProjectHealth/src/repository/loginRepository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main() {
  group("Check Logging service", () {
    LoginRepository loginRepository = LoginRepository();
    test("check logging with valid user", () async {
      //--Given
      Map data = {'email': "summer@gmail.com", 'password': "summer"};
      //--When
      Response res = await loginRepository.loginUser(data);
      //--Then
      expect(res.statusCode, 200);
    });
    test("check logging with invalid user", () async {
      //--Given
      Map data = {'email': "fake@gmail.com", 'password': "fake"};
      //--When
      Response res = await loginRepository.loginUser(data);
      //--Then
      expect(res.statusCode, 500);
    });
  });

  group("Check Logging bloc", () {
    LoginBloc loginBloc = LoginBloc();
    test("check signIn with valid user", () async {
      //--Given
      var email = "summer@gmail.com";
      var password = "summer";
      //--When
      bool check = await loginBloc.signIn(email, password);
      //--Then
      expect(check, true);
    });
    test("check signIn with invalid user", () async {
      //--Given
      var email = "sum@gmail.com";
      var password = "summer";
      //--When
      bool check = await loginBloc.signIn(email, password);
      //--Then
      expect(check, false);
    });

    test("check signUp with complete data", () async {
      //--Given
      var username = "test";
      var email = "test_test4@gmail.com";
      var password = "test";
      //--When
      bool check = await loginBloc.signUp(username, email, password);
      //--Then
      expect(check, true);
    });

    test("check signUp with missing data", () async {
      //--Given
      var username = "";
      var email = "test_test3@gmail.com";
      var password = "test";
      //--When
      bool check = await loginBloc.signUp(username, email, password);
      //--Then
      expect(check, false);
    });
  });
}
