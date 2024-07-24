import 'package:flutter/material.dart';
import 'package:weather_app/models/splash_model.dart';
import 'package:weather_app/screens/request_api_page.dart';
import 'package:weather_app/widgets/welcome_widgets/welcome_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String imageBackgroundWelcome = 'assets/splash1.png';
  String title = 'Detailed Hourly Forecast';
  String subtitle = 'Get in - depth weather information.';
  double valueCricle = .25;
  List<Color> colorCricle2 = [
    Colors.white,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeWidget(
        splashModel: SplashModel(
            image: imageBackgroundWelcome,
            title: title,
            subtitle: subtitle,
            valueCricle: valueCricle,
            colorCricle2: colorCricle2),
        onTap: () {
          changSplash();
        },
      ),
    );
  }

  void changSplash() {
    return setState(() {
      if (imageBackgroundWelcome == 'assets/splash1.png') {
        imageBackgroundWelcome = 'assets/splash2.png';
        title = 'Real-Time Weather Map';
        subtitle = 'Watch the progress of the precipitation to stay informed.';
        valueCricle = .5;
        colorCricle2 = [
          Colors.grey,
          Colors.white,
          Colors.grey,
          Colors.grey,
        ];
      } else if (imageBackgroundWelcome == 'assets/splash2.png') {
        imageBackgroundWelcome = 'assets/splash3.png';
        title = 'Weather Around the World';
        subtitle = 'Add any location you want and swipe easily to chnage.';
        valueCricle = .75;
        colorCricle2 = [
          Colors.grey,
          Colors.grey,
          Colors.white,
          Colors.grey,
        ];
      } else if (imageBackgroundWelcome == 'assets/splash3.png') {
        imageBackgroundWelcome = 'assets/splash4.png';
        title = 'Detailed Hourly Forecast';
        subtitle = 'Get in - depth weather information.';
        valueCricle = 1.0;
        colorCricle2 = [
          Colors.grey,
          Colors.grey,
          Colors.grey,
          Colors.white,
        ];
      } else if (imageBackgroundWelcome == 'assets/splash4.png') {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const RequestApiPage(),
            ),
            (route) => false);
      }
    });
  }
}
