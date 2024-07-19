import 'package:flutter/material.dart';

class HourTempTodayTapListWidget extends StatefulWidget {
  const HourTempTodayTapListWidget({super.key});

  @override
  State<HourTempTodayTapListWidget> createState() =>
      _HourTempTodayTapListWidgetState();
}

class _HourTempTodayTapListWidgetState
    extends State<HourTempTodayTapListWidget> {
  int _selectedIndex = 0; // Initially, no item is selected

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: HourTempTodayTapCardWidget(
            isSelected: _selectedIndex == index,
          ),
        ),
      ),
    );
  }
}

class HourTempTodayTapCardWidget extends StatelessWidget {
  final bool isSelected;

  const HourTempTodayTapCardWidget({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(8),
      width: 49,
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.grey // Color when selected
            : const Color.fromARGB(156, 159, 159, 159), // Default color
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: BorderDirectional(
          bottom: BorderSide(
            color: isSelected
                ? const Color.fromARGB(255, 0, 0, 0) // Color when selected
                : const Color.fromARGB(255, 255, 255, 255),
            width: 2,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "01:44",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 201, 201, 201),
            ),
          ),
          Image(
            image: AssetImage("assets/Bitmap.png"),
            height: 50,
            width: 50,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Text(
            "30°C",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
