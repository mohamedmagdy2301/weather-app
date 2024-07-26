part of 'get_weather_cubit.dart';

abstract class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

final class GetWeatherLoading extends GetWeatherState {}

final class GetWeatherLoaded extends GetWeatherState {
  final WeatherModel weatherModel;
  GetWeatherLoaded({required this.weatherModel});
}

final class GetWeatherError extends GetWeatherState {
  final String error;
  GetWeatherError({required this.error});
}
