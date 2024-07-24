import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/air_quality_today_tap_widegt.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/date_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/details_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/hour_temp_today_tap_list_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/icon_and_temp_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/next_days_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/status_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/sun_and_moon_today_tap_widegt.dart';

class TodayTap extends StatelessWidget {
  const TodayTap({super.key, required this.snapshot});
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
          SliverToBoxAdapter(child: DateTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(
              child: IconAndTempTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(child: StatusTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(
              child: HourTempTodayTapListWidget(snapshot: snapshot)),
          SliverToBoxAdapter(child: NextDaysTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(child: DetailsTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(
              child: AirQualityTodayTapWidget(snapshot: snapshot)),
          SliverToBoxAdapter(
              child: SunAndMoonTodayTapWidget(snapshot: snapshot)),
        ],
      ),
    );
  }
}
