import 'package:flutter/material.dart';
import 'package:weather_app/core/constant.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/SfRadialGauge_toady_tap_widget.dart';

class AirQualityTodayTapWidget extends StatelessWidget {
  const AirQualityTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
// ExpansionTile
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
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
              "Air Quality",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 236, 236, 236),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SfRadialGaugeTodayTapWidegt(
                valueAirQualiy: '30',
              ),
              Text(
                "You have good air quality - enjoy\n your outdoor activities.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(232, 232, 232, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.white38,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            // alignment: Alignment.bottomCenter,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "US EPA AQI ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white38,
                      ),
                    ),
                    Text(
                      " 49/500",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(232, 232, 232, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Dominant pollutant ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white38,
                      ),
                    ),
                    Text(
                      " PM 10",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(232, 232, 232, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
