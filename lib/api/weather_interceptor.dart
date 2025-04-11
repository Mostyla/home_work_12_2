import 'package:dio/dio.dart';

class WeatherInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("Headers: ${options.headers}");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("Response: ${response.statusCode}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print("Error: ${err.response?.statusCode}");
    return super.onError(err, handler);
  }
}

Dio createDio() {
  final dio = Dio();
  dio.interceptors.add(WeatherInterceptor());
  return dio;
}
