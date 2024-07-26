import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/prec_week_prec_tap_widgets.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/thunderstorms_prec_taps_widgets.dart';

class PrecipitationTap extends StatelessWidget {
  const PrecipitationTap({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: PrecWeekPrecTapWidgets(snapshot: weatherModel)),
        const SliverToBoxAdapter(child: ThunderstormsPrecTapsWidgets()),
      ],
    );
  }
}
