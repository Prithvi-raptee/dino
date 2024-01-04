import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class MyTicketScreen extends StatelessWidget {
  const MyTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "My Tickets"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          ticketDetailsWidget(
              title: "Motorcycle",
              date: "23 Jan 24",
              desc:
                  "this is a description of the ticket to check weather its working or note",
              status: "resolved"),
          ticketDetailsWidget(
              title: "Dashboard",
              date: "25 Jan 24",
              desc:
                  "Here is a description of the ticket to check weather its working or note",
              status: "Unresolved"),
          ticketDetailsWidget(
              title: "App",
              date: "26 Jan 24",
              desc:
                  "Here is a description of the ticket to check weather its working or note",
              status: "Unresolved")
        ]),
      ),
    );
  }

  Container ticketDetailsWidget(
      {required String title,
      required String desc,
      required String date,
      required String status}) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Clr.grey2,
      child: Column(children: [
        Row(
          children: [
            Expanded(
                child: Text(
              title,
              style: Style.headingTextStyle(
                  fontWeight: FontWeight.bold, fontFamily: AppFont.montserrat),
            )),
            Text(
              date,
              style: Style.fadeTextStyle(color: Clr.white),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  desc,
                  style: Style.fadeTextStyle(color: Clr.white1),
                )),
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(3),
                    color: status == "resolved" ? Clr.green : Clr.red,
                    alignment: Alignment.center,
                    child: Text(
                      status,
                      style:
                          Style.fadeTextStyle(fontSize: 12, color: Clr.white),
                    )))
          ],
        )
      ]),
    );
  }
}
