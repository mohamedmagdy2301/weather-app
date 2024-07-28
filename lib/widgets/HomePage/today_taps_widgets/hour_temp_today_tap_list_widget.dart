import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class HourTempTodayTapListWidget extends StatefulWidget {
  const HourTempTodayTapListWidget({super.key, required this.snapshot});
  final WeatherModel snapshot;
  @override
  State<HourTempTodayTapListWidget> createState() =>
      _HourTempTodayTapListWidgetState();
}

class _HourTempTodayTapListWidgetState
    extends State<HourTempTodayTapListWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 10),
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
            marginVertical: const EdgeInsets.symmetric(horizontal: 5),
          ),
        ),
      ),
    );
  }
}

class HourTempTodayTapCardWidget extends StatelessWidget {
  final bool isSelected;

  const HourTempTodayTapCardWidget(
      {super.key,
      required this.isSelected,
      required this.snapshot,
      required this.index,
      required this.marginVertical});
  final WeatherModel snapshot;
  final int index;
  final EdgeInsets marginVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginVertical,
      padding: const EdgeInsets.all(10),
      width: 51,
      decoration: BoxDecoration(
          color: !isSelected
              ? const Color.fromARGB(45, 0, 0, 0)
              : const Color.fromARGB(58, 255, 255, 255),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: !isSelected
              ? null
              : Border.all(color: const Color.fromARGB(255, 255, 255, 255))),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            index == 0
                ? "Now"
                : snapshot.forecastDays[0].hourly[index].time
                    .substring(12, 16)
                    .toString(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : const Color.fromARGB(142, 255, 255, 255),
            ),
          ),
          Image(
            // image: AssetImage("assets/Group.png"),
            image: NetworkImage(
                "http:${snapshot.forecastDays[0].hourly[index].conditionIcon}"),
            height: 42,
            width: 100,
            fit: BoxFit.cover,

            alignment: Alignment.center,
          ),
          Text(
            index == 0
                ? "${snapshot.tempC.toString().substring(0, 2)}°"
                : "${snapshot.forecastDays[0].hourly[index].tempC.toString().substring(0, 2)}°",
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
