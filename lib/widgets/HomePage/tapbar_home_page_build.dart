import 'package:flutter/material.dart';

class TapBarHomePageBuild extends StatelessWidget
    implements PreferredSizeWidget {
  const TapBarHomePageBuild({Key? key}) : super(key: key);

  @override
  TabBar build(BuildContext context) {
    return const TabBar(
      isScrollable: false,
      tabAlignment: TabAlignment.fill,
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      indicatorWeight: .07,
      unselectedLabelColor: Color.fromARGB(255, 134, 135, 148),
      dividerColor: Color.fromARGB(255, 134, 135, 148),
      labelStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      dividerHeight: 1.1,
      tabs: [
        Tab(text: 'Today'),
        Tab(text: 'Forecast'),
        Tab(text: 'Precipitation'),
      ],
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
