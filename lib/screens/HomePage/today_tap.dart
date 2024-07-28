import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/air_quality_today_tap_widegt.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/date_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/details_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/hour_temp_today_tap_list_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/next_days_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/status_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/sun_and_moon_today_tap_widegt.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/temp_today_tap_widget.dart';

class TodayTap extends StatelessWidget {
  const TodayTap({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: DateTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(child: TempTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(child: StatusTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(
            child: HourTempTodayTapListWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(
            child: NextDaysTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(
            child: DetailsTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(
            child: AirQualityTodayTapWidget(snapshot: weatherModel)),
        SliverToBoxAdapter(
            child: SunAndMoonTodayTapWidget(snapshot: weatherModel)),
      ],
    );
  }
}
