import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/HomePage/taps/today_tap.dart';
import 'package:weather_app/services/Api.dart';
import 'package:weather_app/test.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 75, 91),
      body: FutureBuilder<List<WeatherModel>>(
          future: Api(Dio()).getWeather(cityName: "Alex"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              ));
            } else if (snapshot.hasError) {
              return Center(
                  child: AlertDialog(
                content: Text("OOPS, Error Occurred (${snapshot.error})"),
              ));
            } else {
              return NewWidget(snapshot: snapshot.data![0]);
            }
          }),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.snapshot,
  });

  final WeatherModel snapshot;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 72, 75, 91),
        drawer: const Drawer(),
        appBar: AppBar(
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
            tabAlignment: TabAlignment.start,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 134, 135, 148),
            dividerColor: Color.fromARGB(255, 134, 135, 148),
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            dividerHeight: 2.4,
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
            BarChartPage(),
            const Center(child: Text('Precipitation')),
            const Center(child: Text('Radar Sun & Moon')),
          ],
        ),
      ),
    );
  }
}
