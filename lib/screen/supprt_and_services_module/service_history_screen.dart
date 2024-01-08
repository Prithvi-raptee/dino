import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                // padding: const EdgeInsets.all(15),
                // decoration: const BoxDecoration(color: Clr.grey1),
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
                children: [
                  Text(
                    "Service Schedule",
                    style: Style.fadeTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Clr.grey1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: Clr.tealLite,
                                borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Clr.white),
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
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Clr.white),
                          )
                        ]),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
