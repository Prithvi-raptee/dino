import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:flutter/material.dart';

class ServiceBookingConfirmationDetailsScreen extends StatelessWidget {
  const ServiceBookingConfirmationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Booking Confirmation"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(color: Clr.grey1),
                  child: Row(
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
                ),
                Positioned.fill(
                    left: -50,
                    bottom: -30,
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(Dir.bikeImage4))),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "Service Details",
                  style: Style.fadeTextStyle(
                      fontSize: 16,
                      color: Clr.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(color: Clr.grey1),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Service Category",
                                  style: Style.fadeTextStyle(),
                                ),
                                Text(
                                  "Genral Services",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.white),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Severity",
                                  style: Style.fadeTextStyle(),
                                ),
                                Text(
                                  "Minor",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14, color: Clr.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Service Type",
                                  style: Style.fadeTextStyle(),
                                ),
                                Text(
                                  "Pick up & Drop",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Clr.teal),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Pick up Time",
                                  style: Style.fadeTextStyle(),
                                ),
                                Text(
                                  "05 Jan, 11:00 am",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14, color: Clr.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Remarks",
                            style: Style.fadeTextStyle(),
                          ),
                          Text(
                            "There is an issue with the brakes.",
                            style: Style.fadeTextStyle(color: Clr.white),
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Currently showing the booking confirmation regarding date and time. Further details will be notified within 24 hours.",
              textAlign: TextAlign.center,
              style: Style.fadeTextStyle(fontSize: 10),
            ),
          ),
        ]),
      ),
    );
  }
}
