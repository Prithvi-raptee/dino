import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/appbar.dart';
import '../../component/customSlider.dart';
import '../../component/style.dart';
import '../../constant/app_font.dart';
import '../../constant/clr.dart';

class CustomControlScreen extends StatefulWidget {
  const CustomControlScreen({super.key});

  @override
  State<CustomControlScreen> createState() => _CustomControlScreenState();
}

class _CustomControlScreenState extends State<CustomControlScreen> {
  double _currentHomeGuide = 40;
  double _currentChargingLimit = 80;
  double _currentRegenBraking = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Settings"),
      backgroundColor: Clr.black,
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Control",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomSlider(
            title: "Follow me home",
            minValue: 0,
            maxValue: 60,
            divisions: 12,
            currentValue: _currentHomeGuide,
            onChanged: (double value) {
              setState(() {
                _currentHomeGuide = value;
              });
            },
          ),
          CustomSlider(
            title: "Set Charging Limit",
            minValue: 0,
            maxValue: 100,
            divisions: 10,
            currentValue: _currentChargingLimit,
            onChanged: (double value) {
              setState(() {
                _currentChargingLimit = value;
              });
            },
          ),
          CustomSlider(
            title: "Regen Braking",
            minValue: 0,
            maxValue: 2,
            divisions: 2,
            currentValue: _currentRegenBraking,
            onChanged: (double value) {
              setState(() {
                _currentRegenBraking = value;
              });
            },
            labels: ["Low", "Medium", "High"],
          ),
          // ... (other widgets)
        ],
      ),
    );
  }
}
