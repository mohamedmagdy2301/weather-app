import 'package:flutter/material.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/date_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/hour_temp_today_tap_list_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/icon_and_temp_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/next_days_today_tap_widget.dart';

class TodayTap extends StatelessWidget {
  const TodayTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Colors.black12,
            Colors.black,
          ],
        ),
      ),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: DateTodayTapWidget()),
          SliverToBoxAdapter(child: IconAndTempTodayTapWidget()),
          SliverToBoxAdapter(child: HourTempTodayTapListWidget()),
          SliverToBoxAdapter(child: NextDaysTodayTapWidget()),
        ],
      ),
    );
  }
}
