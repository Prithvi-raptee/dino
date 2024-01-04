import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

Widget buttonWithIconDesc({
  Widget? icon,
  String? desc,
  VoidCallback? onIconPress,
  VoidCallback? onTap,
  required String title,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      color: Clr.black1,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Style.fadeTextStyle(
                    fontWeight: FontWeight.bold, color: Clr.white),
              ),
              if (desc != null)
                Text(
                  desc,
                  style: Style.fadeTextStyle(fontSize: 10),
                )
            ],
          ),
          if (icon != null) IconButton(onPressed: onIconPress, icon: icon)
        ],
      ),
    ),
  );
}
