import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/info_week_forecast_taps_column_widgets.dart';

class WeekForecastTapsRowWidgets extends StatelessWidget {
  const WeekForecastTapsRowWidgets({
    super.key,
    required this.snapshot,
  });

  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
        InfoWeekForecastTapsColumnWidgets(snapshot: snapshot),
      ],
    );
  }
}
