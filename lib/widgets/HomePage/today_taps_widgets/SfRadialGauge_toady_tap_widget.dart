import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SfRadialGaugeTodayTapWidegt extends StatelessWidget {
  const SfRadialGaugeTodayTapWidegt({super.key, required this.valueAirQualiy});

  final String valueAirQualiy;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 500,
            showLabels: false,
            showTicks: false,
            axisLineStyle: const AxisLineStyle(
              thickness: 0.09,
              cornerStyle: CornerStyle.bothCurve,
              thicknessUnit: GaugeSizeUnit.factor,
              gradient: SweepGradient(
                colors: <Color>[
                  Colors.green,
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                ],
                stops: <double>[0.0, 0.3, 0.66, 1.0],
              ),
            ),
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      valueAirQualiy,
                      style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Moderate',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
                angle: 90,
                positionFactor: 0.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
