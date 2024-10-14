import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/info_thunderstorms_prec_taps_row_widgets.dart';

class ThunderstormsForecastTapsWidgets extends StatelessWidget {
  const ThunderstormsForecastTapsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(72, 75, 91, 0.934),
                Color.fromRGBO(44, 45, 53, 0.637),
              ],
            ),
            borderRadius: BorderRadius.circular(70),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'See minute-by-minute forecasts',
                    style: TextStyle(
                        color: Color.fromARGB(255, 151, 151, 151),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Plan for the next 5 days',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(72, 74, 87, 0.645),
                foregroundColor: Colors.white,
                child: Icon(
                  CupertinoIcons.chevron_forward,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        const InfoThunderstormsPrecTapsRowWidgets(),
        const SizedBox(height: 10),
        const InfoThunderstormsPrecTapsRowWidgets(),
      ],
    );
  }
}
