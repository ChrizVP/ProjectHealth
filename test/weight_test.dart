import 'package:ProjectHealth/src/blocs/weightBloc.dart';
import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('check weight bloc', () {
    test('check create weight with complete data', () async {
      Weight weight = Weight();
      //Given
      weight.value = 65.0;
      weight.date = DateTime.now();
      //When
      var check = await WeightBloc().createWeight(weight);
      //Then
      expect(check, true);
    });
    test('check create weight with missing data', () async {
      Weight weight = Weight();
      //Given
      weight.value = null;
      weight.date = DateTime.now();
      //When
      var check = await WeightBloc().createWeight(weight);
      //Then
      expect(check, false);
    });
  });
}
