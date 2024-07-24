import 'package:flutter/material.dart';

class InfoThunderstormsPrecTapsRowWidgets extends StatelessWidget {
  const InfoThunderstormsPrecTapsRowWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(72, 75, 91, 1),
            Color.fromRGBO(44, 45, 53, 0.074),
          ],
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SUN',
                style: TextStyle(
                    color: Color.fromARGB(197, 157, 157, 157),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'SEP 12',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image(
            image:
                // NetworkImage(widget.image),
                AssetImage("assets/Group.png"),
            height: 40,
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thunderstorms',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 211, 108),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'ssw 11 km/h',
                style: TextStyle(
                    color: Color.fromARGB(170, 203, 203, 203),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '33° / 28°',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                '💧 30%',
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Center(
              child: Icon(
            Icons.chevron_right,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ))
        ],
      ),
    );
  }
}
