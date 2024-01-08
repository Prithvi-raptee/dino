import 'package:dino/component/appbar.dart';
import 'package:dino/component/buttonWithIcon.dart';
import 'package:dino/component/button_with_icon_desc.dart';

import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/live_chat_support_screen.dart';
import 'package:dino/screen/supprt_and_services_module/schedule_service_screen.dart';
import 'package:dino/screen/supprt_and_services_module/service_history_screen.dart';
import 'package:dino/screen/supprt_and_services_module/support_ticket_screen.dart';

import 'package:flutter/material.dart';

class SupportAndServiceScreen extends StatelessWidget {
  const SupportAndServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Clr.black,
        appBar: appBar(context, "Support and Services"),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: buttonWithIconDesc(
                  title: "Roadside Assitance",
                  desc: "24x7 on road emergency help",
                  icon: const Icon(
                    Icons.call,
                    color: Clr.teal,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: buttonWithIconDesc(
                  title: "Call Support",
                  desc: "Have any issues with your vehicle?",
                  icon: const Icon(
                    Icons.call,
                    color: Clr.teal,
                  )),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                child: buttonWithIconDesc(
                  onTap: () {
                    // print("This is-----------------------");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SupportTicketScreen()));
                  },
                  title: "Tickets",
                  desc: "Report an Issue",
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: buttonWithIconDesc(
                  title: "Live Support Chat",
                  desc: "Report an Issue",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LiveChatSupportScreen()));
                  },
                  icon: const Icon(
                    Icons.chat_outlined,
                    color: Clr.teal,
                  )),
            ),
            buttonWithIcon(
                color: Clr.black,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScheduleServiceScreen()));
                },
                title: "Schedule Service",
                fontWeight: FontWeight.bold,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                icon: const Icon(Icons.alarm)),
            buttonWithIcon(
                color: Clr.black,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServiceHistoryScreen()));
                },
                title: "Service History",
                fontWeight: FontWeight.bold,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                icon: const Icon(Icons.history)),
            buttonWithIcon(
                color: Clr.black,
                onPress: () {},
                title: "FAQ",
                fontWeight: FontWeight.bold,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                icon: const Icon(Icons.help_outline))
          ],
        ));
  }
}
