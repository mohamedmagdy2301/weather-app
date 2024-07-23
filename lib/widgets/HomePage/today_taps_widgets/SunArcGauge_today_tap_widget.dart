import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SunArcGauge extends StatelessWidget {
  const SunArcGauge({super.key});

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          startAngle: 180,
          endAngle: 360,
          showTicks: false,
          showLabels: false,
          axisLineStyle: AxisLineStyle(
            thickness: 1.6,
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            dashArray: const <double>[2, 4],
          ),
          pointers: const <GaugePointer>[
            WidgetPointer(
              value: 70,
              child: Icon(
                Icons.sunny,
                color: Color.fromARGB(255, 255, 160, 59),
                size: 27,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
