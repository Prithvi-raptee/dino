import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/component/switch_with_details_setting_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';

import 'package:flutter/material.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool isGenral = false;
  bool isSpeed = true;
  bool isEmegency = true;
  bool isTowling = true;
  bool isMiscellaneous = true;
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
                "Notifications",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20),
          swithWithDetailsWidget(
              initialValue: isGenral,
              desc: "Harsh bracking,idle time, futigue time, over-revving",
              title: "Genral",
              onChanged: () {
                setState(() {
                  isGenral = !isGenral;
                });
              }),
          swithWithDetailsWidget(
              initialValue: isSpeed,
              desc: "Get notified whenever you cross the optimal speed limit",
              title: "Speed",
              onChanged: () {
                setState(() {
                  isSpeed = !isSpeed;
                });
              }),
          swithWithDetailsWidget(
              initialValue: isEmegency,
              desc: "Notify my emergency contact in case of a crash",
              title: "Emergency",
              onChanged: () {
                setState(() {
                  isEmegency = !isEmegency;
                });
              }),
          swithWithDetailsWidget(
              initialValue: isTowling,
              desc: "Send me an alert if my vehicle is getting towed away",
              title: "Towing",
              onChanged: () {
                setState(() {
                  isTowling = !isTowling;
                });
              }),
          swithWithDetailsWidget(
              initialValue: isMiscellaneous,
              desc: "Send me an alert regarding new models etc. ",
              title: "Miscellaneous",
              onChanged: () {
                setState(() {
                  isMiscellaneous = !isMiscellaneous;
                });
              }),
        ]));
  }
}
