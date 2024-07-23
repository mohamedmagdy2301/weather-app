import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/HomePage/today_taps_widgets/hour_temp_today_tap_list_widget.dart';

class DayInfoTodayTapRowWidget extends StatefulWidget {
  const DayInfoTodayTapRowWidget({
    super.key,
    required this.snapshot,
    required this.day,
    required this.image,
    required this.maxTemp,
    required this.minTemp,
  });
  final WeatherModel snapshot;
  final String day;
  final String image;
  final String maxTemp;
  final String minTemp;
  @override
  State<DayInfoTodayTapRowWidget> createState() =>
      _DayInfoTodayTapRowWidgetState();
}

class _DayInfoTodayTapRowWidgetState extends State<DayInfoTodayTapRowWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ExpansionTile(
        backgroundColor: const Color.fromRGBO(72, 75, 91, 1),
        iconColor: Colors.white,
        collapsedIconColor: const Color.fromARGB(255, 168, 168, 168),
        textColor: Colors.white,
        collapsedTextColor: Colors.white,
        tilePadding: const EdgeInsets.symmetric(horizontal: 10),
        controlAffinity: ListTileControlAffinity.leading,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        expandedAlignment: Alignment.centerLeft,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.day,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Image(
              image:
                  // NetworkImage(widget.image),
                  AssetImage("assets/Bitmap.png"),
              height: 60,
              width: 60,
            ),
            const Spacer(),
            Text(
              "${widget.maxTemp}°",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 25),
            Text(
              "${widget.minTemp}°",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(72, 75, 91, 1),
                  // Color.fromRGBO(46, 48, 58, 1),
                  Color.fromRGBO(21, 22, 26, 1),
                ],
              ),
            ),
            height: 120,
            child: ListView.builder(
              itemCount: widget.snapshot.forecastDays[0].hourly.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: HourTempTodayTapCardWidget(
                  isSelected: _selectedIndex == index,
                  snapshot: widget.snapshot,
                  index: index,
                  marginVertical: const EdgeInsets.only(left: 20, bottom: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
