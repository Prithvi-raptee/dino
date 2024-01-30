import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/component/switch_with_details_setting_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

import '../../component/switchButtonCard.dart';

class TestPermissionScreen extends StatefulWidget {
  const TestPermissionScreen({super.key});

  @override
  State<TestPermissionScreen> createState() => _TestPermissionScreenState();
}

class _TestPermissionScreenState extends State<TestPermissionScreen> {
  bool isCamera = true;
  bool isMedia = true;
  bool isContact = true;
  bool isLocation = true;
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
                "Permissions",
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
          SwitchButtonCard(
              initialValue: isLocation,
              title: "Locations",
              desc: "Access location for GPS, amd map",
              onChanged: () {
                setState(() {
                  isLocation = !isLocation;
                });
              }),
          SwitchButtonCard(
              initialValue: isContact,
              title: "Contacts",
              desc: "",
              onChanged: () {
                setState(() {
                  isContact = !isContact;
                });
              }),
          SwitchButtonCard(
              initialValue: isMedia,
              title: "Media",
              desc: "Access music, audio, and videos etc.",
              onChanged: () {
                setState(() {
                  isMedia = !isMedia;
                });
              }),
          SwitchButtonCard(
              initialValue: isCamera,
              title: "Camera",
              desc: "Manage how your info is saved and used",
              onChanged: () {
                setState(() {
                  isCamera = !isCamera;
                });
              })
        ]));
  }
}
