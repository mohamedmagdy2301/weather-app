import 'package:flutter/material.dart';
import 'package:weather_app/models/char_data_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/SfCartesianChart_prec_taps_widget.dart';

class PrecWeekPrecTapWidgets extends StatelessWidget {
  PrecWeekPrecTapWidgets({super.key, required this.snapshot});
  final WeatherModel snapshot;
  final List<ChartData> chartData = [
    ChartData(x: '0%', y: 40),
    ChartData(x: '10%', y: 10),
    ChartData(x: '20%', y: 60),
    ChartData(x: '30%', y: 50),
    ChartData(x: '40%', y: 20),
    ChartData(x: '50%', y: 70),
    ChartData(x: '60%', y: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(72, 75, 91, 1),
            Color.fromRGBO(44, 45, 53, 1),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Precipitation',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              textRowDay('SUN'),
              textRowDay('MON'),
              textRowDay('TUE'),
              textRowDay('WED'),
              textRowDay('THU'),
              textRowDay('FRI'),
              textRowDay('SAT'),
            ],
          ),
          SfCartesianChartPrecTapsWidgets(chartData: chartData),
        ],
      ),
    );
  }

  Text textRowDay(String day) {
    return Text(
      day,
      style: const TextStyle(
        color: Color.fromARGB(255, 133, 133, 133),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
