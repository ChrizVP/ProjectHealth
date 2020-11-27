import 'dart:convert';

import 'package:ProjectHealth/src/models/weightModel.dart';
import 'package:ProjectHealth/src/repository/weightRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WeightBloc {
  SharedPreferences sharedPreferences;

  Future<Weight> getWeight() async {
    Weight _weight = Weight();
    sharedPreferences = await SharedPreferences.getInstance();
    var resWeight =
        await WeightRepository().getWeight(sharedPreferences.get('token'));
    if (resWeight.statusCode == 200) {
      if (resWeight.body.isNotEmpty) {
        var _resWeight = json.decode(resWeight.body);
        _weight.value = _resWeight['value'];
        _weight.date = DateTime.parse(_resWeight['date']);
      }
      return _weight;
    } else {
      return _weight;
    }
  }

  Future<bool> createWeight(Weight _weight) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'value': _weight.value.toString(),
      'date': _weight.date.toString(),
    };
    var response = await WeightRepository()
        .createWeight(data, sharedPreferences.get('token'));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
