import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:weather_app/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: const WelcomePage(),
        duration: 3000,
        imageSize: 280,
        backgroundColor: Colors.white54,
        imageSrc: "assets/splash0.png",
        text: "Weather ",
        textType: TextType.TyperAnimatedText,
        textStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
