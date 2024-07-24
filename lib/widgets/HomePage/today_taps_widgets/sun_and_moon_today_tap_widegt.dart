import 'package:flutter/material.dart';
import 'package:weather_app/methods/constant.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/SunArcGauge_today_tap_widget.dart';

class SunAndMoonTodayTapWidget extends StatelessWidget {
  const SunAndMoonTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
// ExpansionTile
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: KgradientColoeList,
        ),
      ),
      // alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 15, bottom: 25),
            child: const Text(
              "Sun & Moon",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 236, 236, 236),
              ),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    "05:57 AM",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                  ),
                  Text(
                    "Sunrise",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 150,
                width: 150,
                child: const SunArcGauge(),
              ),
              const Spacer(),
              const Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    "06:12 PM",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                  ),
                  Text(
                    "Sunrise",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
