import 'package:dino/component/appbar.dart';
import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/controll_screen.dart';
import 'package:dino/screen/icognito_setting_screen.dart';
import 'package:dino/screen/notification_setting_screen.dart';
import 'package:dino/screen/permission_setting_screen.dart';
import 'package:dino/screen/security_settings.dart';
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
            title: "Notifications",
            icon: const Icon(Icons.home),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationSettingScreen()));
            }),
        CustDrawerButton(
            title: "Permissions",
            icon: const Icon(Icons.home),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PermissionScreen()));
            }),
        CustDrawerButton(
            title: "OTA Updates", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Incognito",
            icon: const Icon(Icons.hide_image),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IcognitoSettingScreen()));
            }),
        CustDrawerButton(
            title: "Security",
            icon: const Icon(Icons.security),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecuritySettingScreen()));
            }),
        CustDrawerButton(
            title: "Bluetooth",
            icon: const Icon(Icons.bluetooth),
            onPress: () {}),
        CustDrawerButton(
            title: "Personalization", icon: Icon(Icons.home), onPress: () {}),
        CustDrawerButton(
            title: "Term and Policy", icon: Icon(Icons.home), onPress: () {}),
      ]),
    );
  }
}
