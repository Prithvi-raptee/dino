import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class Style {
  //Fade TxtStyle for  faded or Shaded Text
  static TextStyle fadeTextStyle(
      {double fontSize = 12,
      Color color = Clr.grey,
      FontWeight fontWeight = FontWeight.normal,
      FontStyle fontStyle = FontStyle.normal,
      String fontFamily = AppFont.montserrat}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
    );
  }

  //Fade TxtStyle for  faded or Shaded Text
  static TextStyle headingTextStyle(
      {double fontSize = 20,
      Color color = Clr.white,
      FontWeight fontWeight = FontWeight.w600,
      FontStyle fontStyle = FontStyle.normal,
      String fontFamily = AppFont.avenir}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
    );
  }

  // App heading TeztStyle

  static TextStyle appTitleTextStyle(
          {double fontSize = 24,
          String fontFamily = AppFont.sen,
          Color color = Clr.white,
          FontWeight fontWeight = FontWeight.normal}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight);
}
