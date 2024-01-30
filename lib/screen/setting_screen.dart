import 'package:dino/component/appbar.dart';
import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/screen/settings_screen/about_setting_screen.dart';
import 'package:dino/screen/settings_screen/bluetooth_setting_screen.dart';
import 'package:dino/screen/settings_screen/control_setting_screen.dart';

import 'package:dino/screen/settings_screen/icognito_setting_screen.dart';
import 'package:dino/screen/settings_screen/notification_setting_screen.dart';
import 'package:dino/screen/settings_screen/ota_update_screen.dart';
import 'package:dino/screen/settings_screen/permission_setting_screen.dart';
import 'package:dino/screen/settings_screen/personalization_setting_screen.dart';
import 'package:dino/screen/settings_screen/security_settings.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Settings"),
      body: Column(children: [
        CustomDrawerButtons(
            title: "Controls",
            icon: const ImageIcon(AssetImage(Dir.controlIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ControlScreen()));
            }),
        CustomDrawerButtons(
            title: "Notifications",
            icon: const ImageIcon(AssetImage(Dir.notificationIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationSettingScreen()));
            }),
        CustomDrawerButtons(
            title: "Permissions",
            icon: const ImageIcon(AssetImage(Dir.permissionIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PermissionScreen()));
            }),
        CustomDrawerButtons(
            title: "OTA Updates",
            icon: const ImageIcon(AssetImage(Dir.updateIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OTAUpadateScreen()));
            }),
        CustomDrawerButtons(
            title: "Incognito",
            icon: const ImageIcon(AssetImage(Dir.incognitoIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IcognitoSettingScreen()));
            }),
        CustomDrawerButtons(
            title: "Security",
            icon: const ImageIcon(AssetImage(Dir.protectIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecuritySettingScreen()));
            }),
        CustomDrawerButtons(
            title: "Bluetooth",
            icon: const Icon(Icons.bluetooth),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BluetoothSettingScreen()));
            }),
        CustomDrawerButtons(
            title: "Personalization",
            icon: const ImageIcon(AssetImage(Dir.personalizionIcon)),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalizationScreen()));
            }),
        CustomDrawerButtons(
            title: "About",
            icon: const Icon(Icons.info_outline),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutSettingScreen()));
            }),
      ]),
    );
  }
}
