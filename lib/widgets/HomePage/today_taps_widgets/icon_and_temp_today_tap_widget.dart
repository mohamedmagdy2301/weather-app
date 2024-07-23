import 'package:flutter/material.dart';
import 'package:weather_app/methods/function.dart';
import 'package:weather_app/models/weather_model.dart';

class IconAndTempTodayTapWidget extends StatelessWidget {
  const IconAndTempTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              const Image(
                // image: NetworkImage("http:${snapshot.conditionIcon}"),
                image: AssetImage("assets/Group.png"),
                height: 150,
                width: 140,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
              const Spacer(flex: 3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientText(
                        snapshot.tempC.toString().substring(0, 2),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(162, 164, 181, 1),
                            Color.fromRGBO(73, 76, 82, 1),
                          ],
                        ),
                        style: const TextStyle(
                          fontSize: 83,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 188, 188, 188),
                        ),
                      ),
                      const Text(
                        "°",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(162, 164, 181, 1),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    snapshot.conditionText,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 1),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      "${snapshot.forecastDays[0].maxTempC.toString().substring(0, 2)}°/${snapshot.forecastDays[0].minTempC.toString().substring(0, 2)}°  |  Feels Like",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 188, 188, 188),
                      ),
                    ),
                    Text(
                      " ${snapshot.feelsLike.toString().substring(0, 2)}°C",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 222, 222, 222),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  "|",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 188, 188, 188),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      "Wind",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 188, 188, 188),
                      ),
                    ),
                    Text(
                      "  ${snapshot.windKph.toString()} kph",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    const Text(
                      "/H WSW",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 188, 188, 188),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Text(
            "- - - - - - - - - - - - - - - - - - - - - - -",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w100,
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }
}
