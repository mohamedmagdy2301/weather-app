import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/screens/HomePage/forecast_taps.dart';
import 'package:weather_app/screens/HomePage/precipitation_taps.dart';
import 'package:weather_app/screens/HomePage/today_tap.dart';
import 'package:weather_app/screens/SearchPage/search_city.dart';
import 'package:weather_app/widgets/HomePage/tapbar_home_page_build.dart';
import 'package:weather_app/widgets/SearchPage/error_message_widget_build.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(72, 75, 91, 1),
              Color.fromRGBO(44, 45, 53, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: const Drawer(),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: const Color.fromRGBO(72, 75, 91, 1),
            centerTitle: true,
            title: const Text(
              'My Location',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SreachCity(),
                    ),
                  );
                },
                icon: const Icon(Icons.search),
              ),
            ],
            bottom: const TapBarHomePageBuild(),
          ),
          body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
            builder: (context, state) {
              if (state is GetWeatherInitial) {
                return const TabBarView(
                  children: [
                    Center(
                        child: Text("Enter a city",
                            style: TextStyle(color: Colors.white))),
                    Center(
                        child: Text("Enter a city",
                            style: TextStyle(color: Colors.white))),
                    Center(
                        child: Text("Enter a city",
                            style: TextStyle(color: Colors.white))),
                  ],
                );
              } else if (state is GetWeatherLoading) {
                return const TabBarView(
                  children: [
                    Center(
                        child: CircularProgressIndicator(color: Colors.amber)),
                    Center(
                        child: CircularProgressIndicator(color: Colors.amber)),
                    Center(
                        child: CircularProgressIndicator(color: Colors.amber)),
                  ],
                );
              } else if (state is GetWeatherLoaded) {
                return const TabBarView(
                  children: [
                    TodayTap(),
                    ForecastTap(),
                    PrecipitationTap(),
                  ],
                );
              } else {
                return const TabBarView(
                  children: [
                    ErrorMessageWidgetBuild(),
                    ErrorMessageWidgetBuild(),
                    ErrorMessageWidgetBuild(),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
