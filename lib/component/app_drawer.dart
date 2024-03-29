import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/screen/charging_screen.dart';
import 'package:dino/screen/document_screen.dart';
import 'package:dino/screen/profile_screen.dart';
import 'package:dino/screen/setting_screen.dart';
import 'package:dino/screen/insight_screen.dart';
import 'package:dino/screen/support_and_service_screen.dart';

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Clr.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: Clr.black,
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(top: 50, left: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Image.asset(
                              Dir.closeIcon,
                              height: 30,
                              width: 30,
                            )),
                      ),
                    ),
                    const Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        fontFamily: AppFont.nebula,

                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )),
            CustomDrawerButtons(
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
            CustomDrawerButtons(
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
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.documentIcon,
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
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.protectIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {},
              title: "Warranty & Insurance",
            ),
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.paymentIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {},
              title: "Payment",
            ),
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.chartIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsightScreen()));
              },
              title: "Insight",
            ),
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.subscribeIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {},
              title: "Subscription",
            ),
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.supportIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SupportAndServiceScreen()));
              },
              title: "Support & Service",
            ),
            CustomDrawerButtons(
              icon: SizedBox(
                  child: Image.asset(
                Dir.exploreIcon,
                height: 20,
                width: 20,
              )),
              onPress: () {},
              title: "Explore",
            ),
            CustomDrawerButtons(
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
      ),
    );
  }
}
