import 'package:flutter/material.dart';
import 'package:weather_app/widgets/HomePage/precipitation_taps_widgets/info_thunderstorms_prec_taps_row_widgets.dart';

class ThunderstormsPrecTapsWidgets extends StatelessWidget {
  const ThunderstormsPrecTapsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Thunderstorms',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        InfoThunderstormsPrecTapsRowWidgets(),
        SizedBox(height: 10),
        InfoThunderstormsPrecTapsRowWidgets(),
      ],
    );
  }
}
