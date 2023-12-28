import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

appBar(BuildContext context, String title) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios)),
    centerTitle: true,
    backgroundColor: Clr.black,
    title: Text(
      title,
      style: Style.appTitleTextStyle(),
    ),
  );
}
