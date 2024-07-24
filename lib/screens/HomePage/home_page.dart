import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/HomePage/forecast_taps.dart';
import 'package:weather_app/screens/HomePage/precipitation_taps.dart';
import 'package:weather_app/screens/HomePage/today_tap.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.snapshot,
  });

  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromRGBO(72, 75, 91, 1),
          centerTitle: true,
          title: Text(
            snapshot.location,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          actions: const [Icon(Icons.search)],
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorWeight: .07,
            unselectedLabelColor: Color.fromARGB(255, 134, 135, 148),
            dividerColor: Color.fromARGB(255, 134, 135, 148),
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            dividerHeight: 1.1,
            tabs: [
              Tab(text: 'Today'),
              Tab(text: 'Forecast'),
              Tab(text: 'Precipitation'),
              Tab(text: 'Radar Sun & Moon'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TodayTap(snapshot: snapshot),
            ForecastTap(snapshot: snapshot),
            PrecipitationTap(snapshot: snapshot),
            const Center(child: Text('Radar Sun & Moon')),
          ],
        ),
      ),
    );
  }
}
