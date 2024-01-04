import 'package:dino/component/appbar.dart';
import 'package:dino/component/buttonWithIcon.dart';
import 'package:dino/component/screen_heading.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:flutter/material.dart';

class OTAUpadateScreen extends StatelessWidget {
  const OTAUpadateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, "Settings"),
        backgroundColor: Clr.black,
        body: Column(children: [
          screenHeading("OTA Updates"),
          const SizedBox(
            height: 20,
          ),
          buttonWithIcon(
              icon: const ImageIcon(
                AssetImage(Dir.documentIcon),
              ),
              onPress: () {},
              title: "Lorem Impsum"),
          buttonWithIcon(
              icon: const ImageIcon(
                AssetImage(Dir.privacyPolicyIcon),
              ),
              onPress: () {},
              title: "Lorem Impsum"),
          buttonWithIcon(
              icon: const ImageIcon(
                AssetImage(Dir.protectIcon),
              ),
              onPress: () {},
              title: "Lorem Ipsum"),
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
                    "\Lorem Ipsum",
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
