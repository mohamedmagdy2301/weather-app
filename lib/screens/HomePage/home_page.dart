import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/screens/SearchPage/search_city.dart';
import 'package:weather_app/widgets/HomePage/tapbar_home_page_build.dart';
import 'package:weather_app/widgets/HomePage/widget_status_view.dart';
import 'package:weather_app/widgets/SearchPage/error_message_widget_build.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context);
    weatherModel.getCurrentLocationWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(74, 79, 107, 1),
              Color.fromRGBO(44, 45, 53, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // drawer: const Drawer(),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: const Color.fromRGBO(72, 75, 91, 1),
            // centerTitle: true,
            title: const Text(
              'Weather',
              style: TextStyle(
                fontSize: 33,
                color: Colors.white,
                fontWeight: FontWeight.w300,
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
              if (state is GetWeatherLoadingInitial) {
                return const LoadingWidget();
              } else if (state is GetCurrentLocationWeatherLoaded) {
                return const CurrentLocationWeatherWidget();
              } else if (state is GetWeatherLoaded) {
                return const SearchWeatherLoadedWidget();
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
