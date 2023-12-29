import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class BluetoothSettingScreen extends StatefulWidget {
  const BluetoothSettingScreen({super.key});

  @override
  State<BluetoothSettingScreen> createState() => _BluetoothSettingScreenState();
}

class _BluetoothSettingScreenState extends State<BluetoothSettingScreen> {
  bool isBluetooth = false;
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
                "Bluetooth",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            padding: const EdgeInsets.all(15),
            color: Clr.grey1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bluetooth',
                            style: Style.fadeTextStyle(
                                color: Clr.white, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // if (desc.isNotEmpty)
                          Text(
                            "",
                            style: Style.fadeTextStyle(
                                fontSize: 10,
                                color: Clr.grey,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 10,
                          child: Switch(
                              activeColor: Clr.teal,
                              activeTrackColor: Clr.teal,
                              thumbColor: MaterialStateProperty.resolveWith(
                                  (states) => Clr.white),
                              value: isBluetooth,
                              onChanged: (newSetting) {
                                setState(() {
                                  isBluetooth = newSetting;
                                  setState(() {});
                                });
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Device name',
                      style: Style.fadeTextStyle(
                          color: Clr.white1, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Blaze Peralta",
                      style: Style.fadeTextStyle(fontSize: 12, color: Clr.teal),
                    )
                  ],
                )
              ],
            ),
          )
        ]));
  }

  void onChanged() {}
}
