import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartPage extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData(x: '30%', y: 30),
    ChartData(x: '0%', y: 0),
    ChartData(x: '40%', y: 40),
    ChartData(x: '50%', y: 50),
    ChartData(x: '50%', y: 50),
    ChartData(x: '50%', y: 50),
    ChartData(x: '40%', y: 40),
  ];

  BarChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E2D3A),
      body: Center(
        child: SizedBox(
          width: 350,
          height: 200,
          child: SfCartesianChart(
            primaryXAxis: const CategoryAxis(
              labelStyle: TextStyle(color: Colors.white),
              majorGridLines: MajorGridLines(width: 0),
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
                borderColor: Colors.white,
                borderWidth: 1,
                spacing: 0.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData({
    required this.x,
    required this.y,
  });

  final String x;
  final double y;
}
