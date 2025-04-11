import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api/weather_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final WeatherService _weatherService = WeatherService(
    Dio(),
    'https://api.openweathermap.org',
  );
  final double _latitude = 52.2298;
  final double _longitude = 21.0118;

  String _weatherInfo = 'Loading...';

  @override
  void initState() {
    _fetchWeather();
    super.initState();
  }

  Future<void> _fetchWeather() async {
    final weather = await _weatherService.getWeatherData(_latitude, _longitude);
    setState(() {
      _weatherInfo = "latitude: ${weather.latitude} longitude: ${weather.longitude} ${weather.weatherData.first.description}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather"), centerTitle: true),
      body: Center(child: Text(
        _weatherInfo,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
