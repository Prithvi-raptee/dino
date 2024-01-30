// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';

// ignore: must_be_immutable
class CustomDrawerButtons extends StatelessWidget {
  CustomDrawerButtons(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPress});

  Widget icon;
  String title;
  Function onPress;

  @override
  Widget build(
    BuildContext context,
  ) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Clr.grey1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 12, fontFamily: AppFont.montserrat),
              ),
            )
          ],
        ),
      ),
    );
  }
}
