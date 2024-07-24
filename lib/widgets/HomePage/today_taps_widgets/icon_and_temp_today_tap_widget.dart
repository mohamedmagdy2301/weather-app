import 'package:flutter/material.dart';
import 'package:weather_app/methods/function.dart';
import 'package:weather_app/models/weather_model.dart';

class IconAndTempTodayTapWidget extends StatelessWidget {
  const IconAndTempTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
              // image: NetworkImage("http:${snapshot.conditionIcon}"),
              image: AssetImage("assets/Group.png"),
              height: 140,
              width: 140,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 140,
              child: Stack(
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
                          fontSize: 85,
                          fontWeight: FontWeight.w500,
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
                  Positioned(
                    bottom: 0,
                    child: Text(
                      snapshot.conditionText,
                      style: TextStyle(
                        fontSize: snapshot.conditionText.length <= 5
                            ? 30
                            : snapshot.conditionText.length <= 10
                                ? 20
                                : 10,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(167, 188, 188, 188),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "${snapshot.forecastDays[0].maxTempC.toString().substring(0, 2)}°/${snapshot.forecastDays[0].minTempC.toString().substring(0, 2)}°  |  Feels Like",
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                  Text(
                    " ${snapshot.feelsLike.toString().substring(0, 2)}°C",
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                  ),
                ],
              ),
              const Text(
                "|",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 188, 188, 188),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Wind",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                  Text(
                    "  ${snapshot.windKph.toString()} kph",
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 231, 231, 231),
                    ),
                  ),
                  const Text(
                    "/H WSW",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
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
      ],
    );
  }
}
