import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/screen/charging_screen.dart';
import 'package:dino/screen/document_screen.dart';
import 'package:dino/screen/profile_screen.dart';
import 'package:dino/screen/setting_screen.dart';

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
              color: Clr.black,
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
            icon: SizedBox(
                child: Image.asset(
              Dir.profileIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            },
            title: "Profile",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.chargeIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChargingScreen()));
            },
            title: "Charging",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.chargeIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DocumentScreen()));
            },
            title: "Document",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.protectIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Warranty & Insurance",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.paymentIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Payment",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.chargeIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Insight",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.subscribeIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Subscription",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.supportIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Support & Service",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.exploreIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {},
            title: "Explore",
          ),
          CustDrawerButton(
            icon: SizedBox(
                child: Image.asset(
              Dir.settingIcon,
              height: 20,
              width: 20,
            )),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen()));
            },
            title: "Settings",
          ),
        ],
      ),
    );
  }
}
