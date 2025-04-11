import 'package:dio/dio.dart';
import 'package:home_work_12_2/api/weather_api_client.dart';
import 'package:logger/logger.dart';

import '../model/weather.dart';

class WeatherService {
  final WeatherApiClient _weatherApiClient;
  final Logger _logger = Logger();

  WeatherService(Dio dio, String baseUrl)
    : _weatherApiClient = WeatherApiClient(dio, baseUrl: baseUrl);

  Future<Weather> getWeatherData(double latitude, double longitude) async {
    try {
      final response = await _weatherApiClient.getWeather(
        latitude: latitude,
        longitude: longitude,
        apiKey: '40c6f5669bf1b377ec32977a1ea5b68a',
        units: 'metric',
      );

      _logger.d("weatherData: $response");

      return response;
    } catch (e) {
      return Weather(longitude: 0, latitude: 0, weatherData: List.empty(),);
    }
  }
}
