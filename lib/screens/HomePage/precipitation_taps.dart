import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/prec_week_prec_tap_widgets.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/thunderstorms_prec_taps_widgets.dart';

class PrecipitationTap extends StatelessWidget {
  const PrecipitationTap({super.key, required this.snapshot});
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
          SliverToBoxAdapter(child: PrecWeekPrecTapWidgets(snapshot: snapshot)),
          const SliverToBoxAdapter(child: ThunderstormsPrecTapsWidgets()),
        ],
      ),
    );
  }
}
