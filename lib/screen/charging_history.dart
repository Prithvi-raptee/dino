import 'dart:math';

import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/url.dart';
import 'package:flutter/material.dart';

class ChargingHistory extends StatefulWidget {
  const ChargingHistory({super.key});

  @override
  State<ChargingHistory> createState() => _ChargingHistoryState();
}

class _ChargingHistoryState extends State<ChargingHistory> {
  List<String> monthDropDownOption = <String>[
    'January',
    'Fabuary',
    'March',
    'April',
    'May',
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String selectedMonth = 'December';
  List<String> yearDropDownOption = <String>['2000', '2021', '2022', '2023'];
  String selectedYear = '2023';

  int chargerMode = 0;

  int getChargerMode() {
    return Random().nextInt(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Charging"),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Clr.black,
        child: SingleChildScrollView(
            child: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Charging History",
                  style: Style.appTitleTextStyle(
                      fontFamily: AppFont.montserrat,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  width: 110,
                  decoration: BoxDecoration(
                      color: Clr.black,
                      borderRadius: BorderRadius.circular(16)),
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    value: selectedMonth,
                    onChanged: (String? value) {
                      setState(() {
                        selectedMonth = value!;
                      });
                    },
                    underline: const SizedBox(),
                    // isExpanded: true,
                    style: Style.fadeTextStyle(
                        color: Clr.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    dropdownColor: Clr.black1,
                    borderRadius: BorderRadius.circular(30),
                    icon:
                        const Icon(Icons.keyboard_arrow_down, color: Clr.white),
                    selectedItemBuilder: (BuildContext context) {
                      return monthDropDownOption.map((String value) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            selectedMonth,
                          ),
                        );
                      }).toList();
                    },
                    items: monthDropDownOption
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                            // height: 40,

                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Clr.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(value)),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Clr.black,
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton<String>(
                    value: selectedYear,
                    onChanged: (String? value) {
                      setState(() {
                        selectedYear = value!;
                      });
                    },
                    underline: const SizedBox(),
                    style: Style.fadeTextStyle(
                        color: Clr.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    dropdownColor: Clr.black1,
                    borderRadius: BorderRadius.circular(30),
                    icon:
                        const Icon(Icons.keyboard_arrow_down, color: Clr.white),
                    selectedItemBuilder: (BuildContext context) {
                      return yearDropDownOption.map((String value) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            selectedYear,
                          ),
                        );
                      }).toList();
                    },
                    items: yearDropDownOption
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                            width: 100,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Clr.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(value)),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 250,
            width: double.infinity,
            child: Image.network(AppUrl.barImage),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (icontext, indeces) {
                  int chargerMode = getChargerMode();
                  return Container(
                    padding: const EdgeInsets.all(15),
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Clr.black1.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              chargerMode == 0
                                  ? Icons.home
                                  : chargerMode == 1
                                      ? Icons.flash_on
                                      : Icons.local_post_office,
                              color: chargerMode == 0
                                  ? Clr.teal
                                  : chargerMode == 1
                                      ? Clr.red
                                      : Clr.yellow,
                              size: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chargerMode == 0
                                    ? "Home"
                                    : chargerMode == 1
                                        ? "Station"
                                        : "Office",
                                style: Style.headingTextStyle(
                                    fontFamily: AppFont.avenir,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "50 mins, 15 kw",
                                style: Style.fadeTextStyle(color: Clr.white),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              chargerMode != 0 ? "\$50" : "0",
                              style: Style.headingTextStyle(fontSize: 16),
                            ),
                            Text(
                              "13 Dec 23",
                              style: Style.fadeTextStyle(
                                  color: Clr.white, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ])),
      ),
    );
  }
}
