import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:flutter/material.dart';

Align screenHeading(String title,
    {double fontSize = 20,
    String fontFamily = AppFont.sen,
    FontWeight fontWeight = FontWeight.bold,
    Alignment alignment = Alignment.centerLeft}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: Style.headingTextStyle(
            fontSize: fontSize, fontFamily: fontFamily, fontWeight: fontWeight),
      ),
    ),
  );
}
