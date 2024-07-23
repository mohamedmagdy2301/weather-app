import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class StatusTodayTapWidget extends StatelessWidget {
  const StatusTodayTapWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              labelBuild(
                  label: 'Precipitation: ',
                  value: " ${snapshot.precipitation.toString()}%",
                  // .substring(0, snapshot.precipitation.toString().lastIndexOf("."))}%",

                  image: "assets/Precipiaion.png"),
              const SizedBox(height: 15),
              labelBuild(
                  label: 'Wind: ',
                  value:
                      " ${snapshot.windChill.toString().substring(0, snapshot.windChill.toString().lastIndexOf("."))}km/h",
                  image: "assets/wind.png"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              labelBuild(
                  label: 'Humidity: ',
                  value: " ${snapshot.humidity.toString()}%",
                  image: "assets/Humidity.png"),
              const SizedBox(height: 15),
              labelBuild(
                  label: 'Cloud: ',
                  value: " ${snapshot.cloud.toString()}%",
                  image: "assets/cloud.png"),
            ],
          ),
        ],
      ),
    );
  }

  Row labelBuild({
    required String label,
    required String value,
    required String image,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage(image),
          height: 24,
          width: 24,
          fit: BoxFit.fill,
          alignment: Alignment.center,
        ),
        const SizedBox(width: 5),
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(155, 158, 173, 1),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
