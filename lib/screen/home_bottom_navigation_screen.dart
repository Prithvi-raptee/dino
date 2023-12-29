import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';

import 'package:dino/screen/home_screen.dart';

import 'package:dino/screen/map_screen.dart';
import 'package:dino/screen/rave_screen.dart';
import 'package:dino/screen/support_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeBottomNavigationScreen extends StatefulWidget {
  const HomeBottomNavigationScreen({super.key});

  @override
  State<HomeBottomNavigationScreen> createState() =>
      _HomeBottomNavigationScreenState();
}

class _HomeBottomNavigationScreenState
    extends State<HomeBottomNavigationScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MapScreen(),
    SupportScreen(),
    RaveScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Clr.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          color: Clr.grey,
          fontSize: 12,
          fontFamily: AppFont.montserrat,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Clr.grey,
          fontSize: 12,
          fontFamily: AppFont.montserrat,
        ),
        // fixedColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Image.asset(
                Dir.logoIcon,
                fit: BoxFit.cover,
              ),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.map,
              color: Clr.white,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 44,
              child: Image.asset(
                Dir.supportIcon,
                // fit: BoxFit.cover,
              ),
            ),
            label: 'Support',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.groups_outlined,
              color: Clr.white,
            ),
            label: 'Rave',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
