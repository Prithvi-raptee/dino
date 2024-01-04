import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';

import 'package:flutter/material.dart';

Container buttonWithIcon(
    {required VoidCallback onPress,
    required title,
    required Widget icon,
    Color color = Clr.grey1,
    EdgeInsetsGeometry padding = const EdgeInsets.all(15),
    FontWeight fontWeight = FontWeight.normal}) {
  return Container(
    padding: padding,
    decoration: BoxDecoration(color: color),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: InkWell(
      onTap: onPress,
      child: Row(children: [
        icon,
        const SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: Style.fadeTextStyle(color: Clr.white1, fontWeight: fontWeight),
        )
      ]),
    ),
  );
}
