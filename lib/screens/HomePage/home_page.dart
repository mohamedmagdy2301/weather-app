import 'package:flutter/material.dart';
import 'package:weather_app/screens/HomePage/taps/forecast_taps.dart';
import 'package:weather_app/screens/HomePage/taps/today_tap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 123, 123, 123),
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(197, 144, 144, 144),
          centerTitle: true,
          title: const Text(
            'Monufia, Egypt',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          actions: const [Icon(Icons.search)],
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelColor: Color.fromARGB(255, 0, 32, 69),
            indicatorColor: Color.fromARGB(255, 0, 32, 69),
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
            dividerHeight: 0,
            tabs: [
              Tab(text: 'Today'),
              Tab(text: 'Forecast'),
              Tab(text: 'Precipitation'),
              Tab(text: 'Radar Sun & Moon'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TodayTap(),
            ForecastTaps(),
            Center(child: Text('Precipitation')),
            Center(child: Text('Radar Sun & Moon')),
          ],
        ),
      ),
    );
  }
}
