import 'package:dino/screen/explore/settingsTest1.dart';
import 'package:flutter/material.dart';

import '../../component/appbar.dart';
import '../../component/elevatedCardButton.dart';
import '../../component/elevatedCardButton2.dart';
import '../../component/elevatedCardButton3.dart';
import '../../component/style.dart';
import '../../constant/clr.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SettingsTest extends StatefulWidget {
  const SettingsTest({super.key});

  @override
  State<SettingsTest> createState() => _SettingsTestState();
}

class _SettingsTestState extends State<SettingsTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [
                    Clr.grey.withOpacity(0.5),
                    Clr.grey.withOpacity(0.1),
                  ],
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service Schedule",
                      style: Style.fadeTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Clr.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            // enlargeCenterPage: true,
                            pageSnapping: true,
                            aspectRatio: 18/9,
                            viewportFraction: 0.77,
                            enlargeFactor: 0.9,
                            autoPlay: true,
                            autoPlayAnimationDuration: const Duration(milliseconds: 2500),
                            autoPlayCurve: Easing.emphasizedDecelerate,
                            autoPlayInterval: const Duration(milliseconds: 5500),
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                            enableInfiniteScroll: true),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            serviceScheduleItem(context)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: ["1", "2", "3"]
                            .map((e) => const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 10,
                                  ),
                                ))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Stack(children: [
              Center(
                child: Container(
                  height: 240,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        Clr.grey.withOpacity(0.5),
                        Clr.grey.withOpacity(0.1),
                      ],
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: ElevatedCardButton(
                              icon: Icons.call,
                              text: 'Roadside Assistance',
                              buttonColor: Clr.blue202,
                              onPressed: () {
                                // Handle button press
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: ElevatedCardButton(
                              icon: Icons.chat_outlined,
                              text: 'Live Support Chat',
                              buttonColor: Clr.pink202,
                              onPressed: () {
                                // Handle button press
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: ElevatedCardButton(
                              icon: Icons.settings,
                              text: 'Schedule Service',
                              buttonColor: Clr.purple202,
                              onPressed: () {
                                // Handle button press
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100,
                            child: ElevatedCardButton(
                              icon: Icons.call,
                              text: 'Call Support',
                              buttonColor: Clr.green,
                              onPressed: () {
                                // Handle button press
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),

            SizedBox(
              child: Text("More Options", style: Style.headingTextStyle(),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedCardButton2(
                      icon: Icons.info_outline_rounded,
                      text: 'FAQ',
                      iconColor: Clr.white,
                      textColor: Clr.white,
                      cardColor: Clr.greybg202,
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                    ElevatedCardButton2(
                      icon: Icons.settings,
                      text: 'Service History',
                      iconColor: Clr.white,
                      textColor: Clr.white,
                      cardColor: Clr.greybg202,
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                    ElevatedCardButton2(
                      icon: Icons.sticky_note_2,
                      text: 'Tickets',
                      iconColor: Clr.white,
                      textColor: Clr.white,
                      cardColor: Clr.greybg202,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const SettingsTest1()));
                        // Handle button press
                      },
                    ),
                  ],
                ),
              ),
            ),

            ElevatedCardButton3(
              buttons: [
                CustomElevatedButton(
                  icon: Icons.settings,
                  text: 'Button 1',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  borderRadius: 12,
                  buttonColor: Clr.grey,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                CustomElevatedButton(
                  icon: Icons.access_alarm,
                  text: 'Button 2',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  borderRadius: 12,
                  buttonColor: Clr.grey,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                CustomElevatedButton(
                  icon: Icons.cloud,
                  text: 'Button 3',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  borderRadius: 12,
                  buttonColor: Clr.grey,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                CustomElevatedButton(
                  icon: Icons.camera,
                  text: 'Button 4',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  borderRadius: 12,
                  buttonColor: Clr.grey,
                  onPressed: () {
                    // Handle button press
                  },
                ),
                CustomElevatedButton(
                  icon: Icons.favorite,
                  text: 'Button 5',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  borderRadius: 12,
                  buttonColor: Clr.grey,
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Container serviceScheduleItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(color: Clr.tealLite, borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                  color: Clr.green202, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "UPCOMING",
                style: Style.fadeTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Clr.black1),
              ),
            ),
            Text(
              "1st Service",
              style: Style.fadeTextStyle(),
            ),
            Text(
              "5000 km ",
              style: Style.fadeTextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Clr.black1),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Type",
              style: Style.fadeTextStyle(),
            ),
            Text(
              "Periodic service",
              style: Style.fadeTextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Clr.black1),
            )
          ]),
    );
  }
}
