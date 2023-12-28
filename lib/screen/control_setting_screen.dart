import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  double _currentCharginhLimit = 20;
  double _currentRegenBreking = 2;

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
              "Control",
              style: Style.headingTextStyle(
                  fontSize: 20,
                  fontFamily: AppFont.sen,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          color: Clr.black1,
          child: Row(
            children: [
              const Icon(Icons.home),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Guide me home",
                style: Style.fadeTextStyle(
                    color: Clr.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Container(
          // height: 60,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          color: Clr.black1,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.home),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Set Charging Limit",
                    style: Style.fadeTextStyle(
                        color: Clr.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Slider(
                      thumbColor: Clr.white,
                      value: _currentCharginhLimit,
                      max: 100,
                      divisions: 100,
                      label: _currentCharginhLimit.round().toString(),
                      min: 0,
                      activeColor: Clr.teal,
                      onChanged: (double value) {
                        setState(() {
                          _currentCharginhLimit = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "0",
                          style: Style.fadeTextStyle(
                            fontSize: 12,
                            color: Clr.white,
                          ),
                        ),
                        Text(
                          "100",
                          style: Style.fadeTextStyle(
                            fontSize: 12,
                            color: Clr.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          // height: 60,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          color: Clr.black1,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.home),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Regen Breking",
                    style: Style.fadeTextStyle(
                        color: Clr.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Slider(
                      value: _currentRegenBreking,
                      max: 100,
                      divisions: 2,
                      thumbColor: Clr.white,
                      label: _currentRegenBreking.round().toString(),
                      min: 0,
                      activeColor: Clr.teal,
                      onChanged: (double value) {
                        setState(() {
                          _currentRegenBreking = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Low",
                          style: Style.fadeTextStyle(
                            fontSize: 12,
                            color: Clr.white,
                          ),
                        ),
                        Text(
                          "Medium",
                          style: Style.fadeTextStyle(
                            fontSize: 12,
                            color: Clr.white,
                          ),
                        ),
                        Text(
                          "High",
                          style: Style.fadeTextStyle(
                            fontSize: 12,
                            color: Clr.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
