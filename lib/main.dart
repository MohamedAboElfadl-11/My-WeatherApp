import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/controller/weather_proviedr.dart';
import 'package:weather/view/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return WeatherProvider();
      },
      child: MaterialApp(
        title: "Weather App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff3f3f3),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xfff3f3f3),
            elevation: 0,
          ),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
