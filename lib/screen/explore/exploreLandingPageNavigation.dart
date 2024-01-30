import 'package:dino/component/appbar.dart';
import 'package:dino/screen/explore/TestSupportServiceScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/app_drawer.dart';
import '../../constant/clr.dart';
import '../../constant/directory.dart';
import '../rave_screen.dart';
import '../support_and_service_screen.dart';
import 'exploreLandingPage.dart';

class ExploreLandingPageNavigation extends StatefulWidget {
  const ExploreLandingPageNavigation({super.key});

  @override
  State<ExploreLandingPageNavigation> createState() => _ExploreLandingPageNavigationState();
}

class _ExploreLandingPageNavigationState extends State<ExploreLandingPageNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const ExploreLandingPage(),
    const SupportAndServiceScreen(),
    const TestSupportServiceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: exploreAppBar(context, "Explore"),
      drawer: const AppDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        backgroundColor: Clr.black,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: const Duration(milliseconds: 1500),
        surfaceTintColor: Clr.black,
        indicatorColor: Clr.grey,
        destinations: [
          NavigationDestination(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Image.asset(
                Dir.logoIcon,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Image.asset(
                Dir.supportIcon,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: 'Support',
          ),
          const NavigationDestination(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Icon(
                Icons.groups_outlined,
                color: Clr.white,
              ),
            ),
            label: 'Rave',
          ),
        ],
      ),
    );
  }
}
