import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';
import 'package:weather_app/core/function.dart';

class SreachCity extends StatelessWidget {
  const SreachCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Search City',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            TextFieldSearchCity(),
            const CustmarCitySearchWidgetBuild(
              cityName: 'Paris',
              tempCity: '24',
            ),
            const CustmarCitySearchWidgetBuild(
              cityName: 'London',
              tempCity: '32',
            ),
            const CustmarCitySearchWidgetBuild(
              cityName: 'Cairo',
              tempCity: '26',
            ),
            const CustmarCitySearchWidgetBuild(
              cityName: 'Alexandria',
              tempCity: '34',
            ),
          ],
        ),
      ),
    );
  }
}

class CustmarCitySearchWidgetBuild extends StatelessWidget {
  const CustmarCitySearchWidgetBuild({
    super.key,
    required this.cityName,
    required this.tempCity,
  });
  final String cityName;
  final String tempCity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var weatherModel = BlocProvider.of<GetWeatherCubit>(context);
        weatherModel.getWeather(cityName: cityName);
        Navigator.pop(context);
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/$cityName.jpg"),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: const TextStyle(
                    color: Color.fromARGB(202, 251, 251, 251),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientText(
                          tempCity,
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(249, 249, 249, 1),
                              Color.fromRGBO(120, 120, 121, 1),
                            ],
                          ),
                          style: const TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 188, 188, 188),
                          ),
                        ),
                        const Text(
                          "°",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(162, 164, 181, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}

class TextFieldSearchCity extends StatelessWidget {
  TextFieldSearchCity({
    super.key,
  });
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        onSubmitted: (cityName) {
          var weatherModel = BlocProvider.of<GetWeatherCubit>(context);
          weatherModel.getWeather(cityName: cityName);
          Navigator.pop(context);
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 115, 115, 115), width: .5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 210, 210, 210), width: .5),
          ),
          hintText: 'Enter a city, state, or zip code',
          suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                var weatherModel = BlocProvider.of<GetWeatherCubit>(context);
                weatherModel.getWeather(cityName: controller.text);
                Navigator.pop(context);
              }),
          suffixIconColor: const Color.fromARGB(255, 213, 213, 213),
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 143, 143, 143),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          label: const Text(
            'Search City',
            style: TextStyle(
              color: Color.fromARGB(255, 198, 198, 198),
              fontSize: 17,
            ),
          ),
        ),
        style: const TextStyle(
          color: Color.fromARGB(255, 221, 221, 221),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
