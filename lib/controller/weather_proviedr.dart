import 'package:flutter/foundation.dart';
import 'package:weather/model/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weatherModel;

  set weatherData(WeatherModel? weatherModel) {
    _weatherModel = weatherModel;
    notifyListeners();
  }

  WeatherModel? get weatherData => _weatherModel;
}
