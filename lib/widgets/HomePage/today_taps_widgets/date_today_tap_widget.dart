import 'package:flutter/material.dart';

class DateTodayTapWidget extends StatelessWidget {
  const DateTodayTapWidget({super.key});

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 40,
        width: 160,
        decoration: const BoxDecoration(
          color: Color.fromARGB(156, 159, 159, 159),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        alignment: Alignment.center,
        child: const Text(
          "Sunday, 6 March",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
