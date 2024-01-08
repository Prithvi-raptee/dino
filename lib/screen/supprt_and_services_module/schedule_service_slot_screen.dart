import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/service_booked_confirmation_screen.dart';
import 'package:flutter/material.dart';

class ScheduleServiceSlotScreen extends StatefulWidget {
  const ScheduleServiceSlotScreen({super.key});

  @override
  State<ScheduleServiceSlotScreen> createState() =>
      _ScheduleServiceSlotScreenState();
}

class _ScheduleServiceSlotScreenState extends State<ScheduleServiceSlotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Schedule Service"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Date",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontFamily: AppFont.avenir,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Time",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontFamily: AppFont.avenir,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Clr.teal),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceBookingConformationScreen()));
                      },
                      child: Text(
                        'Confirm',
                        style: Style.headingTextStyle(fontSize: 16),
                      )),
                ),
              )
            ]),
      ),
    );
  }
}
