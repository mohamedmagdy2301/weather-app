import 'package:flutter/material.dart';
import 'package:weather_app/screens/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 52, 57, 72),
      //   appBarTheme:
      //       const AppBarTheme(backgroundColor: Color.fromARGB(255, 52, 57, 72)),
      // ),
      home: HomePage(),
    );
  }
}
