part of 'get_weather_cubit.dart';

abstract class GetWeatherState {}

final class GetWeatherLoadingInitial extends GetWeatherState {}

final class GetCurrentLocationWeatherLoaded extends GetWeatherState {
  final WeatherModel weatherModel;
  GetCurrentLocationWeatherLoaded({required this.weatherModel});
}

final class GetWeatherLoaded extends GetWeatherState {
  final WeatherModel weatherModel;
  GetWeatherLoaded({required this.weatherModel});
}

final class GetWeatherError extends GetWeatherState {
  final String error;
  GetWeatherError({required this.error});
}
