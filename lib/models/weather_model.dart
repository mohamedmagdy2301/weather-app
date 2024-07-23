class WeatherModel {
  final String location;
  final String dateCurrent;
  final double feelsLike;
  final double windKph;
  final double tempC;
  final String conditionText;
  final String conditionIcon;
  final num precipitation;
  final num humidity;
  final num windChill;
  final num cloud;
  final num uv;

  final List<ForecastDay> forecastDays;

  WeatherModel({
    required this.location,
    required this.tempC,
    required this.conditionText,
    required this.conditionIcon,
    required this.forecastDays,
    required this.dateCurrent,
    required this.feelsLike,
    required this.windKph,
    required this.precipitation,
    required this.humidity,
    required this.windChill,
    required this.cloud,
    required this.uv,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: json['location']['name'],
      dateCurrent: json['location']['localtime'],
      tempC: json['current']['temp_c'],
      conditionText: json['current']['condition']['text'],
      conditionIcon: json['current']['condition']['icon'],
      feelsLike: json['current']['feelslike_c'],
      windKph: json['current']['wind_kph'],
      precipitation: json['current']['precip_mm'],
      humidity: json['current']['humidity'],
      windChill: json['current']['windchill_c'],
      cloud: json['current']['cloud'],
      uv: json['current']['uv'],
      forecastDays: (json['forecast']['forecastday'] as List)
          .map((i) => ForecastDay.fromJson(i))
          .toList(),
    );
  }
}

class ForecastDay {
  final String date;
  final double maxTempC;
  final double minTempC;
  final String conditionText;
  final String conditionIcon;
  final List<HourlyForecast> hourly;

  ForecastDay({
    required this.date,
    required this.maxTempC,
    required this.minTempC,
    required this.conditionText,
    required this.conditionIcon,
    required this.hourly,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'],
      maxTempC: json['day']['maxtemp_c'],
      minTempC: json['day']['mintemp_c'],
      conditionText: json['day']['condition']['text'],
      conditionIcon: json['day']['condition']['icon'],
      hourly: (json['hour'] as List)
          .map((i) => HourlyForecast.fromJson(i))
          .toList(),
    );
  }
}

class HourlyForecast {
  final String time;
  final double tempC;
  final String conditionText;
  final String conditionIcon;
  final num dewPoint;

  HourlyForecast({
    required this.time,
    required this.tempC,
    required this.conditionText,
    required this.conditionIcon,
    required this.dewPoint,
  });

  factory HourlyForecast.fromJson(Map<String, dynamic> json) {
    return HourlyForecast(
      time: json['time'],
      tempC: json['temp_c'],
      conditionText: json['condition']['text'],
      conditionIcon: json['condition']['icon'],
      dewPoint: json['dewpoint_c'],
    );
  }
}
