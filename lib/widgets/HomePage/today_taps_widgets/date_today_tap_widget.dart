import 'package:flutter/material.dart';
import 'package:weather_app/core/function.dart';
import 'package:weather_app/models/weather_model.dart';

class DateTodayTapWidget extends StatelessWidget {
  const DateTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            "${getDayOfWeek(snapshot.dateCurrent)},",
            style: textStyleBuild(),
          ),
          const SizedBox(width: 6),
          Text(
            snapshot.dateCurrent.substring(8, 10),
            style: textStyleBuild(),
          ),
          const SizedBox(width: 3),
          Text(
            monthToString(int.parse(snapshot.dateCurrent.substring(5, 7))),
            style: textStyleBuild(),
          ),
          const Spacer(),
          Text(
            snapshot.location,
            style: textStyleBuild(),
          ),
        ],
      ),
    );
  }

  TextStyle textStyleBuild() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      color: Color.fromRGBO(195, 198, 211, 1),
    );
  }
}
