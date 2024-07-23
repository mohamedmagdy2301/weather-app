import 'package:flutter/material.dart';
import 'package:weather_app/methods/constant.dart';
import 'package:weather_app/methods/function.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/day_info_today_tap_row_widget.dart';

class NextDaysTodayTapWidget extends StatelessWidget {
  const NextDaysTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
// ExpansionTile
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: KgradientColoeList,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, right: 0),
              child: const Row(
                children: [
                  Spacer(flex: 17),
                  Text(
                    "HIGH ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                  ),
                  Text(
                    " LOW",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.forecastDays.length,
              itemBuilder: (context, index) {
                return DayInfoTodayTapRowWidget(
                  snapshot: snapshot,
                  day: getDayOfWeek(snapshot.forecastDays[index].date)
                      .toString(),
                  image: snapshot.forecastDays[index].conditionIcon,
                  maxTemp: snapshot.forecastDays[index].maxTempC
                      .toString()
                      .substring(0, 2),
                  minTemp: snapshot.forecastDays[index].minTempC
                      .toString()
                      .substring(0, 2),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: const Row(
                children: [
                  Text(
                    "Show more",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color.fromARGB(255, 172, 172, 172),
                    size: 30,
                  ),
                  Spacer(flex: 1),
                  Text(
                    "F° / ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 172, 172, 172),
                    ),
                  ),
                  Text(
                    "C°",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 4, 221, 242),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
