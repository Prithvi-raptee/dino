
import 'package:dino/component/newDrawerButtons.dart';
import 'package:flutter/material.dart';

import '../../component/appbar.dart';
import '../../constant/clr.dart';
import '../../constant/directory.dart';
import '../settings_screen/about_setting_screen.dart';
import '../settings_screen/ota_update_screen.dart';
import '../settings_screen/personalization_setting_screen.dart';
import 'CustomControlScreen.dart';
import 'TestIncognito.dart';
import 'TestNotification.dart';
import 'TestPermissionSettings.dart';
import 'TestSecurityTesting.dart';

class SettingScreenTest extends StatelessWidget {
  const SettingScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Settings"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            CustomDrawerButtons(
              title: "Controls",
              icon: const ImageIcon(AssetImage(Dir.controlIcon)),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomControlScreen()));              },
              subTexts: const ["Follow Me Home", "Charging Limit", "Regen Breaking"],
              subTextSeparator: ' • ',
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "Notifications",
              icon: const ImageIcon(AssetImage(Dir.notificationIcon)),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestNotificationSetting()));              },
              subTexts: const ["General", "Speed", "Emergency", "Towing", "Misc"],
              subTextSeparator: ' • ',
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "Permissions",
              icon: const ImageIcon(AssetImage(Dir.permissionIcon)),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestPermissionScreen()));              },
              subTexts: const ["Location", "Contacts", "Media", "Camera"],
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "OTA Updates",
              icon: const ImageIcon(AssetImage(Dir.updateIcon)),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OTAUpadateScreen()));              },
              subTexts: const ["Update", "Search for Update", "Update History", "Misc"],
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "Incognito",
              icon: const ImageIcon(AssetImage(Dir.incognitoIcon)),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestIncognitoSettingScreen()));              },
              subTexts: const ["Turn On Incognito mode to stop tracking your location"],
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "Security",
              icon: const ImageIcon(AssetImage(Dir.protectIcon)),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TestSecuritySettingScreen()));              },
              subTexts: const ["Data and Personalization", "App Lock", "Guest Control"],
              buttonColor: Clr.greybg202,
            ),
            // CustomDrawerButtons(
            //   title: "Bluetooth",
            //   icon: const Icon(Icons.bluetooth),
            //   subTextSeparator: ' • ',
            //   onPress: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const BluetoothSettingScreen()));              },
            //   subTexts: const ["Turn On/Off", "Connected Devices"],
            //   buttonColor: Clr.greybg202,
            // ),
            CustomDrawerButtons(
              title: "Personalization",
              icon: const ImageIcon(AssetImage(Dir.personalizionIcon)),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalizationScreen()));              },
              subTexts: const ["Dark Mode", "Light Mode", "Auto Mode"],
              buttonColor: Clr.greybg202,
            ),
            CustomDrawerButtons(
              title: "About",
              icon: const Icon(Icons.info_outline),
              subTextSeparator: ' • ',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutSettingScreen()));              },
              subTexts: const ["T&C", "Privacy Policy", "Software License"],
              buttonColor: Clr.greybg202,
            ),
          ],
        ),
      ),
    );
  }
}