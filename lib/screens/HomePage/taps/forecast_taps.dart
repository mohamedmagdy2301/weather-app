import 'package:flutter/material.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/date_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/icon_and_temp_today_tap_widget.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/next_days_today_tap_widget.dart';

class ForecastTaps extends StatelessWidget {
  const ForecastTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: DateTodayTapWidget()),
        const SliverToBoxAdapter(child: IconAndTempTodayTapWidget()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10),
                height: 90,
                width: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(156, 159, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "30°C",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: NextDaysTodayTapWidget()),
      ],
    );
  }
}
