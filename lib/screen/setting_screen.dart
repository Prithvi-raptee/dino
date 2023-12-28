import 'package:dino/component/appbar.dart';
import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/controll_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Settings"),
      body: Column(children: [
        CustDrawerButton(
            title: "Controls",
            icon: const Icon(Icons.home),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ControlScreen()));
            }),
        CustDrawerButton(
            title: "Notifications", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Permissions", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "OTA Updates", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Incognito", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Change Password", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Bluetooth", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Personalization", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Term and Policy", icon: Icon(Icons.home), onPress: () {}),
      ]),
    );
  }
}
