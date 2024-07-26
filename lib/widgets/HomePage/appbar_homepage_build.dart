import 'package:flutter/material.dart';
import 'package:weather_app/screens/SearchPage/search_city.dart';
import 'package:weather_app/widgets/HomePage/tapbar_home_page_build.dart';

class AppBarHomePageBuild extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarHomePageBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: const Color.fromRGBO(72, 75, 91, 1),
      centerTitle: true,
      title: const Text(
        'My Location',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SreachCity(),
              ),
            );
          },
          icon: const Icon(Icons.search),
        ),
      ],
      bottom: const TapBarHomePageBuild(),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
