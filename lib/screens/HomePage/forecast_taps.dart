import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/chart_forecast_taps_widgets.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/thunderstorms_forecast_taps_widgets.dart';
import 'package:weather_app/widgets/HomePage/forecast_taps_widgets/week_forecast_taps_row_widgets.dart';

class ForecastTap extends StatelessWidget {
  const ForecastTap({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(
            child: WeekForecastTapsRowWidgets(snapshot: weatherModel)),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        const SliverToBoxAdapter(child: ChartForecastTapsWidgets()),
        const SliverToBoxAdapter(child: ThunderstormsForecastTapsWidgets()),
      ],
    );
  }
}
