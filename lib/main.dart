import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api/weather_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  final double _latitude = 51.5074;
  final double _longitude = -0.1278;

  String _weatherInfo = 'Loading...';
  bool _isLoading = true;

  @override
  void initState() {
    _fetchWeather();
    super.initState();
  }

  Future<void> _fetchWeather() async {
    final weather = await _weatherService.getWeatherData(_latitude, _longitude);
    setState(() {
      _weatherInfo =
          "${weather.coord.lat}\n${weather.coord.lon}\n${weather.name}\n${weather.weather.first.main}\n${weather.weather.first.description}";
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather"), centerTitle: true),
      body: Center(
        child:
            _isLoading
                ? CircularProgressIndicator()
                : Text(
                  _weatherInfo,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
      ),
    );
  }
}
