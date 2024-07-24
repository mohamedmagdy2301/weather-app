import 'package:flutter/material.dart';
import 'package:weather_app/methods/constant.dart';
import 'package:weather_app/models/weather_model.dart';

class DetailsTodayTapWidget extends StatelessWidget {
  const DetailsTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
// ExpansionTile
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: KgradientColoeList),
      ),
      // alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10),
            child: const Text(
              "DETAILS",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 236, 236, 236),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                // image: NetworkImage("http:${snapshot.conditionIcon}"),
                image: AssetImage("assets/Group.png"),
                height: 120,
                width: 120,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleDetelisTodayTapMethod(title: "Feels like"),
                  titleDetelisTodayTapMethod(title: "Humidity"),
                  titleDetelisTodayTapMethod(title: "Visibility"),
                  titleDetelisTodayTapMethod(title: "UV Index"),
                  titleDetelisTodayTapMethod(title: "Dew point"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  value(value: "${snapshot.feelsLike}%"),
                  value(value: "${snapshot.humidity}%"),
                  value(value: "22°"),
                  value(value: "${snapshot.uv}"),
                  value(
                      value: "${snapshot.forecastDays[0].hourly[0].dewPoint}°"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "Tonight - Clear. Winds from SW to SSW at 10 to 11 mph (16.1 to 17 kph). The overnight low will be 69° F (20.0 ° C)",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(232, 232, 232, 1),
              ),
            ),
          )
        ],
      ),
    );
  }

  Text value({required value}) {
    return Text(
      value,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(162, 164, 181, 1),
      ),
    );
  }

  Row titleDetelisTodayTapMethod({required title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(162, 164, 181, 1),
          ),
        ),
      ],
    );
  }
}
