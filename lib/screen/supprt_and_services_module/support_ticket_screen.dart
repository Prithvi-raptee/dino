import 'package:dino/component/appbar.dart';
import 'package:dino/component/button_with_icon_desc.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/my_ticket_screen.dart';
import 'package:dino/screen/supprt_and_services_module/raise_ticket_screen.dart';
import 'package:flutter/material.dart';

class SupportTicketScreen extends StatefulWidget {
  const SupportTicketScreen({super.key});

  @override
  State<SupportTicketScreen> createState() => _SupportTicketScreenState();
}

class _SupportTicketScreenState extends State<SupportTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Ticket"),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: buttonWithIconDesc(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RaiseTicketScreen()));
              },
              title: "Raise a Ticket",
              desc: "Report an Issue"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: buttonWithIconDesc(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyTicketScreen()));
              },
              title: "My Tickets",
              desc: "Check the status of your ticket"),
        )
      ]),
    );
  }
}
