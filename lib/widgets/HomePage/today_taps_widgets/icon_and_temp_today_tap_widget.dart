import 'package:flutter/material.dart';

class IconAndTempTodayTapWidget extends StatelessWidget {
  const IconAndTempTodayTapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/Bitmap.png"),
                height: 240,
                width: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              Column(
                children: [
                  Text(
                    "39°C",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                  Text(
                    "Partly Cloudy",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    "29°C/27°C | Feels Like",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                  Text(
                    " 39°C",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                  ),
                ],
              ),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 188, 188, 188),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Wind",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 188, 188, 188),
                    ),
                  ),
                  Text(
                    " 3.8km",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 231, 231, 231),
                    ),
                  ),
                  Text(
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
          Text(
            "- - - - - - - - - - - - - - - - - - - - - - -",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }
}
