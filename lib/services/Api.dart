// ignore_for_file: file_names

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class Api {
  Dio dio;
  Api(this.dio);
  static const String baseUrl = "http://api.weatherapi.com/v1/forecast.json";
  static const String keyValue = "fc013e5e710e4123ba4155610230808";

  Future<List<WeatherModel>> getWeather({required String cityName}) async {
    List<WeatherModel> weatherList = [];
    try {
      Response response =
          await dio.get("$baseUrl?key=$keyValue&q=$cityName&days=10");

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      weatherList.add(weatherModel);

      log(weatherList.toString());
      log("---------------------------------------------------");
      return weatherList;
    } catch (e) {
      log(e.toString());
      log("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
      return weatherList;
    }
  }
}
