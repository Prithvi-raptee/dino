import 'package:carousel_slider/carousel_slider.dart';
import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/service_details_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ServiceHistoryScreen extends StatelessWidget {
  const ServiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Service History"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Registration",
                            style: Style.fadeTextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "TN07DE0047",
                            style: Style.fadeTextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Clr.white),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ODO",
                            style: Style.fadeTextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "3456 KM",
                            style: Style.fadeTextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Clr.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Clr.tealLite,
                      border: Border.all(width: 2, color: Clr.teal2)),
                  child: Text(
                    "Need to book a service? For any issues with your vehicle or to schedule a service. Kindly reach out to our Customer Support on +91 40004 40004",
                    style: Style.fadeTextStyle(color: Clr.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
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
                            viewportFraction: 0.7,
                            enlargeFactor: 0.3,
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
                                  padding: EdgeInsets.all(2.0),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Service History",
                    style: Style.fadeTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                ),
                Column(
                  children: [1, 2]
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Clr.black1,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "05 Jan 2024",
                                            style: Style.fadeTextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12,
                                                color: Clr.white),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Warranty Repair",
                                            style: Style.fadeTextStyle(
                                                fontSize: 14, color: Clr.white),
                                          )
                                        ],
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ServiceDetailsScreen()));
                                          },
                                          icon: const Icon(
                                              CupertinoIcons.arrow_up_right))
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Clr.grey1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "20 Nov 2023",
                                            style: Style.fadeTextStyle(
                                                fontSize: 12, color: Clr.grey),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Accident Repair",
                                            style: Style.fadeTextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Clr.white),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Service Type',
                                            style: Style.fadeTextStyle(),
                                          ),
                                          Text(
                                            "Pick up & Drop",
                                            style: Style.fadeTextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Clr.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Text(
                    "Currently showing service history since Jan 2023  for any discrepancies or queries,  Kindly reach out to customer support at info@raptee.com",
                    textAlign: TextAlign.center,
                    style: Style.fadeTextStyle(fontSize: 10),
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Container serviceScheduleItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(color: Clr.grey1),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                  color: Clr.tealLite, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "UPCOMING",
                style: Style.fadeTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Clr.teal2),
              ),
            ),
            Text(
              "1st Service",
              style: Style.fadeTextStyle(),
            ),
            Text(
              "5000 km ",
              style: Style.fadeTextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Clr.white),
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
                  fontSize: 16, fontWeight: FontWeight.bold, color: Clr.white),
            )
          ]),
    );
  }
}
