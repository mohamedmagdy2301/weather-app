import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class InfoWeekForecastTapsColumnWidgets extends StatelessWidget {
  const InfoWeekForecastTapsColumnWidgets({
    super.key,
    required this.snapshot,
  });

  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Image(
          image:
              // NetworkImage(widget.image),
              AssetImage("assets/Group.png"),
          height: 30,
          width: 30,
        ),
        const SizedBox(height: 3),
        const Text(
          "SUN",
          style: TextStyle(
            fontSize: 13,
            color: Color.fromARGB(255, 193, 193, 193),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          "${snapshot.forecastDays[0].hourly[0].tempC.toString().split(".")[0]} °",
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
