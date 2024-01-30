import 'package:dino/component/appbar.dart';
import 'package:dino/component/screen_heading.dart';

import 'package:dino/component/switch_with_details_setting_button.dart';

import 'package:dino/constant/clr.dart';

import 'package:flutter/material.dart';

import '../../component/switchButtonCard.dart';

class TestNotificationSetting extends StatefulWidget {
  const TestNotificationSetting({super.key});

  @override
  State<TestNotificationSetting> createState() =>
      _TestNotificationSettingState();
}

class _TestNotificationSettingState extends State<TestNotificationSetting> {
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
          screenHeading("Notifications"),
          const SizedBox(height: 20),
          SwitchButtonCard(
              initialValue: isGenral,
              desc: "Harsh bracking,idle time, futigue time, over-revving",
              title: "Genral",
              onChanged: () {
                setState(() {
                  isGenral = !isGenral;
                });
              }),
          SwitchButtonCard(
              initialValue: isSpeed,
              desc: "Get notified whenever you cross the optimal speed limit",
              title: "Speed",
              onChanged: () {
                setState(() {
                  isSpeed = !isSpeed;
                });
              }),
          SwitchButtonCard(
              initialValue: isEmegency,
              desc: "Notify my emergency contact in case of a crash",
              title: "Emergency",
              onChanged: () {
                setState(() {
                  isEmegency = !isEmegency;
                });
              }),
          SwitchButtonCard(
              initialValue: isTowling,
              desc: "Send me an alert if my vehicle is getting towed away",
              title: "Towing",
              onChanged: () {
                setState(() {
                  isTowling = !isTowling;
                });
              }),
          SwitchButtonCard(
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
