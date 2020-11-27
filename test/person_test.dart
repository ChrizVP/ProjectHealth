import 'package:ProjectHealth/src/blocs/personBloc.dart';
import 'package:ProjectHealth/src/models/personModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('check person bloc', () {
    PersonBloc personBloc = PersonBloc();

    test('check create person with complete data', () async {
      Person person = Person();
      //Given
      person.name = "christian";
      person.lastName = "perez";
      person.age = 15;
      person.size = 1.65;
      //When
      bool check = await personBloc.createOrUpdatePerson(person);
      //then
      expect(check, true);
    });

    test('check create person with missing data', () async {
      Person person = Person();
      //Given
      person.name = "";
      person.lastName = "";
      person.age = null;
      person.size = null;
      //When
      bool check = await personBloc.createOrUpdatePerson(person);
      //then
      expect(check, false);
    });
  });
}
