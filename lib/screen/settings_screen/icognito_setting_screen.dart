import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/component/switch_with_details_setting_button.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class IcognitoSettingScreen extends StatefulWidget {
  const IcognitoSettingScreen({super.key});

  @override
  State<IcognitoSettingScreen> createState() => _IcognitoSettingScreenState();
}

class _IcognitoSettingScreenState extends State<IcognitoSettingScreen> {
  bool isIcognito = false;
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
                "Icognito",
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
              initialValue: isIcognito,
              title: "Incognito",
              desc:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
              onChanged: () {
                setState(() {
                  isIcognito = !isIcognito;
                });
              })
        ]));
  }
}
