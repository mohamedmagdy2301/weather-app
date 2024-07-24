import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/chart_forecast_taps_widgets.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/thunderstorms_forecast_taps_widgets.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/week_forecast_taps_row_widgets.dart';

class ForecastTap extends StatelessWidget {
  const ForecastTap({super.key, required this.snapshot});
  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(72, 75, 91, 1),
            Color.fromRGBO(44, 45, 53, 1),
          ],
        ),
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
              child: WeekForecastTapsRowWidgets(snapshot: snapshot)),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const SliverToBoxAdapter(child: ChartForecastTapsWidgets()),
          const SliverToBoxAdapter(child: ThunderstormsForecastTapsWidgets()),
        ],
      ),
    );
  }
}
