import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String monthToString(int month) {
  List<String> monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  return monthNames[month - 1];
}

String getDayOfWeek(String dateString) {
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  DateTime dateTime = dateFormat.parse(dateString);
  String dayOfWeek = DateFormat('EEE').format(dateTime);
  return dayOfWeek;
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
