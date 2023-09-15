class WeatherModel {
  String cityName;
  double temp;
  String sunrise;
  String sunset;
  String dateDay1;
  String dateDay2;
  String country;
  String state;
  double minTemp;
  double maxTemp;
  String icon;
  String iconDay1;
  String iconDay2;
  String stateDay1;
  String stateDay2;
  double tempDay1;
  double tempDay2;
  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.sunrise,
    required this.sunset,
    required this.dateDay1,
    required this.dateDay2,
    required this.country,
    required this.state,
    required this.maxTemp,
    required this.minTemp,
    required this.icon,
    required this.iconDay1,
    required this.iconDay2,
    required this.stateDay1,
    required this.stateDay2,
    required this.tempDay1,
    required this.tempDay2,

  });

  factory WeatherModel.fromJson(dynamic data){

    var forecastData = data["forecast"]["forecastday"];

    return WeatherModel(
      minTemp: forecastData[0]["day"]["mintemp_c"],
      maxTemp: forecastData[0]["day"]["maxtemp_c"],
      sunrise: forecastData[0]["astro"]["sunrise"],
      sunset:forecastData[0]["astro"]["sunset"],
      dateDay1:forecastData[1]["date"],
      dateDay2: forecastData[2]["date"],
      cityName: data["location"]["name"],
      country: data["location"]["country"],
      state: data["current"]["condition"]["text"],
      temp: data ["current"]["temp_c"],
      icon: data["current"]["condition"]["icon"],
      iconDay1: forecastData[1]["day"]["condition"]["icon"],
      iconDay2:forecastData[2]["day"]["condition"]["icon"],
      stateDay1: forecastData[1]["day"]["condition"]["text"],
      stateDay2: forecastData[2]["day"]["condition"]["text"],
      tempDay1: forecastData[1]["day"]["avgtemp_c"],
      tempDay2:forecastData[2]["day"]["avgtemp_c"],
    );
  }
}
