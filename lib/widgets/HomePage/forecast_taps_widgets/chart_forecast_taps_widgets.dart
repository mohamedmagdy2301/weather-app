import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartForecastTapsWidgets extends StatefulWidget {
  const ChartForecastTapsWidgets({super.key});

  @override
  _ChartForecastTapsWidgetsState createState() =>
      _ChartForecastTapsWidgetsState();
}

class _ChartForecastTapsWidgetsState extends State<ChartForecastTapsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(10),
        color: const Color.fromARGB(0, 44, 44, 84),
        child: SfCartesianChart(
          backgroundColor: const Color.fromARGB(0, 44, 44, 84),
          primaryXAxis: const CategoryAxis(
            majorGridLines: MajorGridLines(width: 0),
            labelStyle: TextStyle(color: Colors.white54),
            axisLine: AxisLine(color: Colors.white54),
          ),
          primaryYAxis: const NumericAxis(isVisible: false),
          series: <CandleSeries>[
            CandleSeries<ChartSampleData, String>(
              dataSource: getChartData(),
              xValueMapper: (ChartSampleData data, _) => data.x,
              lowValueMapper: (ChartSampleData data, _) => data.low,
              highValueMapper: (ChartSampleData data, _) => data.high,
              openValueMapper: (ChartSampleData data, _) => data.open,
              closeValueMapper: (ChartSampleData data, _) => data.close,
              bearColor: const Color.fromARGB(168, 255, 153, 0),
              bullColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(x: '12', low: 10, high: 20, open: 15, close: 18),
      ChartSampleData(x: '13', low: 12, high: 25, open: 20, close: 15),
      ChartSampleData(x: '14', low: 18, high: 30, open: 26, close: 28),
      ChartSampleData(x: '15', low: 14, high: 22, open: 16, close: 20),
      ChartSampleData(x: '16', low: 20, high: 24, open: 22, close: 23),
      ChartSampleData(x: '17', low: 10, high: 18, open: 15, close: 17),
      ChartSampleData(x: '18', low: 15, high: 25, open: 19, close: 22),
      ChartSampleData(x: '19', low: 14, high: 20, open: 18, close: 19),
    ];
  }
}

class ChartSampleData {
  ChartSampleData(
      {required this.x,
      required this.low,
      required this.high,
      required this.open,
      required this.close});

  final String x;
  final double low;
  final double high;
  final double open;
  final double close;
}
