import 'package:flutter/material.dart';
import 'package:weather_app/screens/HomePage/forecast_taps.dart';
import 'package:weather_app/screens/HomePage/precipitation_taps.dart';
import 'package:weather_app/screens/HomePage/today_tap.dart';
import 'package:weather_app/widgets/SearchPage/error_message_widget_build.dart';

class SearchWeatherLoadedWidget extends StatelessWidget {
  const SearchWeatherLoadedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        TodayTap(),
        ForecastTap(),
        PrecipitationTap(),
      ],
    );
  }
}

class CurrentLocationWeatherWidget extends StatelessWidget {
  const CurrentLocationWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        TodayTap(),
        ForecastTap(),
        PrecipitationTap(),
      ],
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        Center(child: CircularProgressIndicator(color: Colors.amber)),
        Center(child: CircularProgressIndicator(color: Colors.amber)),
        Center(child: CircularProgressIndicator(color: Colors.amber)),
      ],
    );
  }
}
