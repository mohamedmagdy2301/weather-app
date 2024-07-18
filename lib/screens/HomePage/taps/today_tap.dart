import 'package:flutter/material.dart';

class TodayTap extends StatelessWidget {
  const TodayTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 40,
                  width: 160,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(156, 159, 159, 159),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Sunday, 6 March",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 262,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 240,
                          width: 200,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        Column(
                          children: [
                            Text(
                              "39°C",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                            ),
                            Text(
                              "Partly Cloudy",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "29°C/27°C | Feels Like",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                            ),
                            Text(
                              " 39°C",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 222, 222, 222),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 188, 188, 188),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Wind",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                            ),
                            Text(
                              " 3.8km",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 231, 231, 231),
                              ),
                            ),
                            Text(
                              "/H WSW",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Text(
                "- - - - - - - - - - - - - - - - - - - - - - -",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white38,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(156, 159, 159, 159),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "30°C",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(156, 159, 159, 159),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "30°C",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(156, 159, 159, 159),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "30°C",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(156, 159, 159, 159),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "30°C",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(156, 159, 159, 159),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "30°C",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(156, 75, 75, 75),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                alignment: Alignment.center,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "H: 30°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "L: 20°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Friday",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "H: 30°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "L: 20°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Saturday",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "H: 30°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "L: 20°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Sunday",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "H: 30°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "L: 20°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Monday",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/Bitmap.png"),
                          height: 60,
                          width: 60,
                        ),
                        Text(
                          "H: 30°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "L: 20°C",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
