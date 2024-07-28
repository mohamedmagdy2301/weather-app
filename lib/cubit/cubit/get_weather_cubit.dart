import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/get_weather_serviceAPI.dart';

part 'package:weather_app/cubit/cubit/get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherLoadingInitial());
  late WeatherModel weatherModel;
  late String errorMessage;

  getCurrentLocationWeather() async {
    try {
      emit(GetWeatherLoadingInitial());

      Future.delayed(const Duration(seconds: 6));
      weatherModel = await GetWeatherServiceAPI(Dio()).getWeather(
          cityName:
              "HX7W+6VJ, Mazlaan Abou Agwa, Qism Shebeen El-Kom, Shibin el Kom, Menofia Governorate 6130645");
      emit(GetCurrentLocationWeatherLoaded(weatherModel: weatherModel));
    } catch (e) {
      errorMessage = e.toString();
      emit(GetWeatherError(error: errorMessage));
    }
  }

  getWeather({required String cityName}) async {
    try {
      emit(GetWeatherLoadingInitial());
      Future.delayed(const Duration(seconds: 6));
      weatherModel =
          await GetWeatherServiceAPI(Dio()).getWeather(cityName: cityName);
      emit(GetWeatherLoaded(weatherModel: weatherModel));
    } catch (e) {
      errorMessage = e.toString();
      emit(GetWeatherError(error: errorMessage));
    }
  }
}
