import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class WeatherService {
  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri uri = Uri.parse(
      "http://api.weatherapi.com/v1/forecast.json?key=02bce3aa60b4464ab8625119230705&q=$cityName&days=3",
    );
    http.Response response = await http.get(uri);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}
