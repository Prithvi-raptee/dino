import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/screen/home_screen.dart';
import 'package:dino/screen/map_screen.dart';
import 'package:dino/screen/rave_screen.dart';
import 'package:dino/screen/support_and_service_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeBottomNavigationScreen(),
    );
  }
}

class HomeBottomNavigationScreen extends StatefulWidget {
  const HomeBottomNavigationScreen({super.key});

  @override
  State<HomeBottomNavigationScreen> createState() =>
      _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MapScreen(),
    const SupportAndServiceScreen(),
    const RaveScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //MATERIAL 3 NavigationBar, EDIT: Replaced BottomNavigationBar with Navigation Bar
      // Edit 2: Changed from material colors to app theme colors.
      bottomNavigationBar: NavigationBar(
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
            label: 'Home',
          ),
          NavigationDestination(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Image.asset(
                Dir.mapIcon2,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: 'Map',
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
        selectedIndex: _selectedIndex,
        backgroundColor: Clr.black,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: const Duration(milliseconds: 1500),
      ),
    );
  }
}

