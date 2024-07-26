import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class GetWeatherServiceAPI {
  Dio dio;
  GetWeatherServiceAPI(this.dio);
  static const String baseUrl = "http://api.weatherapi.com/v1/forecast.json";
  static const String keyValue = "fc013e5e710e4123ba4155610230808";

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get("$baseUrl?key=$keyValue&q=$cityName&days=10");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      log("------------> ${weatherModel.location}");
      return weatherModel;
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.badResponse) {
        throw Exception("${dioError.response?.data["error"]["message"]}");
      } else {
        throw Exception("Try Again Later\n(May be Server Down)");
      }
    } catch (e) {
      throw Exception("Try Again Later\n(May be Server Down)");
    }
  }
}
