import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/HomePage/home_page.dart';
import 'package:weather_app/services/Api.dart';

class RequestApiPage extends StatelessWidget {
  const RequestApiPage({super.key});

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
              return HomePage(snapshot: snapshot.data![0]);
            }
          }),
    );
  }
}
