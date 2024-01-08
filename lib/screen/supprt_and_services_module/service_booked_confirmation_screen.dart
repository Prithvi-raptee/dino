import 'dart:async';

import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/screen/supprt_and_services_module/service_booking_confirmation_details_screen.dart';
import 'package:flutter/material.dart';

class ServiceBookingConformationScreen extends StatefulWidget {
  const ServiceBookingConformationScreen({super.key});

  @override
  State<ServiceBookingConformationScreen> createState() =>
      _ServiceBookingConformationScreenState();
}

class _ServiceBookingConformationScreenState
    extends State<ServiceBookingConformationScreen> {
  // Timer timer=Timer(const Duration(seconds: 5), () {
  //   Navigator.push(
  //      BuildContext context,
  //       MaterialPageRoute(
  //           builder: (context) =>
  //               const ServiceBookingConfirmationDetailsScreen()));
  // });

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const ServiceBookingConfirmationDetailsScreen()));
    });
    return Scaffold(
      backgroundColor: Clr.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Clr.teal,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Clr.teal.withOpacity(0.2),
                        spreadRadius: 20,
                        blurRadius: 10,
                        blurStyle: BlurStyle.inner)
                  ]),
              child: const ImageIcon(AssetImage(Dir.doneIcon))),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Booking Confirmed",
            style: Style.fadeTextStyle(
                color: Clr.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
