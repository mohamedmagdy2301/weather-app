import 'package:flutter/material.dart';
import 'package:weather_app/methods/function.dart';
import 'package:weather_app/models/weather_model.dart';

class DateTodayTapWidget extends StatelessWidget {
  const DateTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        height: 30,
        width: 120,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(50, 51, 62, 1),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }

  TextStyle textStyleBuild() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(155, 158, 173, 1),
    );
  }
}
