import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class AboutSettingScreen extends StatelessWidget {
  const AboutSettingScreen({super.key});

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
                "About",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(color: Clr.black1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Row(children: [
                const Icon(Icons.document_scanner),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Terms and Services",
                  style: Style.fadeTextStyle(color: Clr.white1),
                )
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(color: Clr.black1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Row(children: [
                const Icon(Icons.lock),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Privacy Policy",
                  style: Style.fadeTextStyle(color: Clr.white1),
                )
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(color: Clr.black1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Row(children: [
                const Icon(Icons.security_rounded),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Software Licenses",
                  style: Style.fadeTextStyle(color: Clr.white1),
                )
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            // decoration: const BoxDecoration(color: Clr.black1),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Row(children: [
                const Icon(Icons.info_outline),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    "Version 205.1.5(arm64-v84_rlease_flutter)",
                    overflow: TextOverflow.ellipsis,
                    style: Style.fadeTextStyle(color: Clr.white1),
                  ),
                )
              ]),
            ),
          )
        ]));
  }
}
