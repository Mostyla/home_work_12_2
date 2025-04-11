import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../model/weather.dart';

part 'weather_api_client.g.dart';

@RestApi()
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

  @GET('/data/2.5/weather')
  Future<Weather> getWeather({
    @Query('lat') required double latitude,
    @Query('lon') required double longitude,
    @Query('appid') required String apiKey,
    @Query('units') required String units,
  });
}