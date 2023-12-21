import 'dart:ui';

import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/profile_screen.dart';

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Clr.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(top: 100, left: 20, bottom: 10),
              child: const Text(
                "Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontFamily: AppFont.sen,

                  // fontWeight: FontWeight.bold
                ),
              )),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            title: "Profile",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Charging",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Stats & Insight",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Warranty & Insurance",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Payment",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Subscription",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Support & Service",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Eplore",
          ),
          CustDrawerButton(
            icon: const Icon(
              Icons.home,
            ),
            onPress: () {},
            title: "Settings",
          ),
        ],
      ),
    );
  }
}
