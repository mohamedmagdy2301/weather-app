import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/splash_model.dart';

class WelcomeWidget extends StatelessWidget {
  final SplashModel splashModel;
  final Function() onTap;

  const WelcomeWidget({
    super.key,
    required this.splashModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 45, 53, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
            ),
            child: Center(
              child: Image.asset(splashModel.image,
                  height: 300, width: 260, fit: BoxFit.cover),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 4, backgroundColor: splashModel.colorCricle2[0]),
              const SizedBox(width: 5),
              CircleAvatar(
                  radius: 4, backgroundColor: splashModel.colorCricle2[1]),
              const SizedBox(width: 5),
              CircleAvatar(
                  radius: 4, backgroundColor: splashModel.colorCricle2[2]),
              const SizedBox(width: 5),
              CircleAvatar(
                  radius: 4, backgroundColor: splashModel.colorCricle2[3]),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.elliptical(340, 130)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      splashModel.title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      splashModel.subtitle,
                      style: const TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 93, 93, 93)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: splashModel.valueCricle,
                          strokeWidth: 4,
                          strokeAlign: 6,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.pink),
                          backgroundColor:
                              const Color.fromARGB(82, 224, 224, 224),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: onTap,
                            borderRadius: BorderRadius.circular(50.0),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(44, 45, 53, 0.837),
                                foregroundColor: Colors.white,
                                child: Icon(
                                  CupertinoIcons.arrow_right,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
