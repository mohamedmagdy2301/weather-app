import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_app/models/char_data_model.dart';

class SfCartesianChartPrecTapsWidgets extends StatelessWidget {
  const SfCartesianChartPrecTapsWidgets({
    super.key,
    required this.chartData,
  });

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: const CategoryAxis(
        labelStyle: TextStyle(color: Colors.white),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
      ),
      primaryYAxis: const NumericAxis(
        isVisible: false,
        majorGridLines: MajorGridLines(width: 0),
      ),
      series: <CartesianSeries>[
        ColumnSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          color: Colors.white70,
          borderWidth: 0,
          spacing: 0,
        ),
      ],
    );
  }
}
