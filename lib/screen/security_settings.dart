import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/component/switch_with_details_setting_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class SecuritySettingScreen extends StatefulWidget {
  const SecuritySettingScreen({super.key});

  @override
  State<SecuritySettingScreen> createState() => _SecuritySettingScreenState();
}

class _SecuritySettingScreenState extends State<SecuritySettingScreen> {
  bool isDataPersonalization = false;
  bool isAppLock = true;
  bool isGuestControl = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, "Settings"),
        backgroundColor: Clr.black,
        body: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Security",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          swithWithDetailsWidget(
              initialValue: isDataPersonalization,
              title: 'Data & Personalization',
              desc: "Manage how your info is saved and used",
              onChanged: () {
                setState(() {
                  isDataPersonalization = !isDataPersonalization;
                });
              }),
          swithWithDetailsWidget(
              initialValue: isAppLock,
              title: 'Enable app lock',
              desc: "Get notified whenever you cross the optimal speed limit",
              onChanged: () {
                setState(() {
                  isAppLock = !isAppLock;
                });
              }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Manage app lock",
                style: Style.fadeTextStyle(color: Clr.teal),
              ),
            ),
          ),
          swithWithDetailsWidget(
              initialValue: isGuestControl,
              title: 'Guest Control',
              desc: "Mange data that your guest users can see",
              onChanged: () {
                setState(() {
                  isGuestControl = !isGuestControl;
                });
              }),
        ]));
  }
}
