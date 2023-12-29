import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class PersonalizationScreen extends StatefulWidget {
  const PersonalizationScreen({super.key});

  @override
  State<PersonalizationScreen> createState() => _PersonalizationScreenState();
}

class _PersonalizationScreenState extends State<PersonalizationScreen> {
  int selectedTheme = 1;
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
                "Personalization",
                style: Style.headingTextStyle(
                    fontSize: 20,
                    fontFamily: AppFont.sen,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            print("Clicked.....");

                            selectedTheme = 0;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            // width: 200,
                            padding: const EdgeInsets.all(15),
                            // margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Clr.black1,
                              // border: selectedTheme == 0
                              //     ? Border.all(width: 2, color: Clr.teal)
                              //     : Border.all()
                            ),
                            child: Column(children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Clr.black,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Dark Mode",
                                  style: Style.fadeTextStyle(color: Clr.white1),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.check_circle,
                                  color: selectedTheme == 0
                                      ? Clr.teal
                                      : Clr.white1,
                                  size: 15,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            print("Clicked.....");

                            selectedTheme = 1;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            // width: 200,
                            padding: const EdgeInsets.all(15),
                            // margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Clr.black1,
                              // border: selectedTheme == 1
                              //     ? Border.all(width: 2, color: Clr.teal)
                              //     : Border.all()
                            ),
                            child: Column(children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Clr.black,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Light Mode",
                                  style: Style.fadeTextStyle(color: Clr.white1),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.check_circle,
                                  color: selectedTheme == 1
                                      ? Clr.teal
                                      : Clr.white1,
                                  size: 15,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            print("Clicked.....");

                            selectedTheme = 2;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            // width: 200,
                            padding: const EdgeInsets.all(15),
                            // margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Clr.black1,
                              // border: selectedTheme == 2
                              //     ? Border.all(width: 2, color: Clr.teal)
                              //     : Border.all()
                            ),
                            child: Column(children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Clr.black,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Mode 3",
                                  style: Style.fadeTextStyle(color: Clr.white1),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.check_circle,
                                  color: selectedTheme == 2
                                      ? Clr.teal
                                      : Clr.white1,
                                  size: 15,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            print("Clicked.....");

                            selectedTheme = 3;
                            setState(() {});
                          },
                          child: Container(
                            height: 150,
                            // width: 200,
                            padding: const EdgeInsets.all(15),
                            // margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Clr.black1,
                              // border: selectedTheme == 3
                              //     ? Border.all(width: 2, color: Clr.teal)
                              //     : Border.all()
                            ),
                            child: Column(children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Clr.black,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Auto Mode",
                                  style: Style.fadeTextStyle(color: Clr.white1),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.check_circle,
                                  color: selectedTheme == 3
                                      ? Clr.teal
                                      : Clr.white1,
                                  size: 15,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
