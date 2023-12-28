import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChargerConnectedScreen extends StatelessWidget {
  ChargerConnectedScreen({super.key});

  bool homeCharger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Charging",
          style: Style.appTitleTextStyle(),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Clr.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        color: Clr.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      homeCharger ? "Home" : "External",
                      style: Style.fadeTextStyle(
                          fontSize: 20,
                          fontFamily: AppFont.avenir,
                          fontWeight: FontWeight.bold,
                          color: Clr.white),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Charging Guidline",
                          style: Style.fadeTextStyle(
                              color: Clr.white, fontSize: 10)),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: 20,
                      blurRadius: 20,
                      color: Clr.teal.withOpacity(0.5))
                ], shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 100,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 10, blurRadius: 10, color: Colors.black)
                    ], shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundColor: Clr.black,
                      radius: 80,
                      child: Text(
                        "80%",
                        style: Style.headingTextStyle(
                            fontSize: 36,
                            fontFamily: AppFont.avenir,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        // color: Clr.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    height: 120,
                    // width: 120,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (!homeCharger)
                                const Icon(
                                  Icons.flash_on,
                                  color: Clr.teal,
                                ),
                              Text(
                                "Charging",
                                textAlign: TextAlign.left,
                                style: Style.headingTextStyle(
                                    fontSize: 20,
                                    fontFamily: AppFont.avenir,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "00:30:30 remaining",
                            style: Style.fadeTextStyle(fontSize: 16),
                          )
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Clr.grey1,
                        borderRadius: BorderRadius.circular(20)),
                    // height: 50,
                    // width: 250,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Manhatta",
                            style: Style.headingTextStyle(
                                fontSize: 20,
                                fontFamily: AppFont.avenir,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "GSGHD325435",
                            style: Style.fadeTextStyle(
                                color: Clr.grey,
                                fontSize: 14,
                                fontFamily: AppFont.montserrat),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Charging Duration",
                                    style: Style.fadeTextStyle(
                                        color: Clr.white1,
                                        fontSize: 14,
                                        fontFamily: AppFont.montserrat),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "20:20:00",
                                    style: Style.headingTextStyle(
                                        fontSize: 20,
                                        fontFamily: AppFont.avenir,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              if (!homeCharger)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "To pay:",
                                      style: Style.fadeTextStyle(
                                          color: Clr.white1,
                                          fontSize: 14,
                                          fontFamily: AppFont.montserrat),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$15",
                                      style: Style.headingTextStyle(
                                          fontSize: 20,
                                          color: Clr.teal,
                                          fontFamily: AppFont.avenir,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(),
                                      backgroundColor: Clr.red),
                                  onPressed: () {},
                                  child: Text(
                                    "Disconnected",
                                    style: Style.fadeTextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Clr.white),
                                  )),
                            ),
                          )
                        ]),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
