import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

import '../screen/home_bottom_navigation_screen.dart';

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

// To be used for Map, Support and Rave screen to directly navigate to the home screen instead of going to "Verify OTP" option.
appBarToHome(BuildContext context, String title) {
  return AppBar(
    leading: InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const HomeBottomNavigationScreen()),
        );
      },
      child: const Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    backgroundColor: Clr.black,
    title: Text(
      title,
      style: Style.appTitleTextStyle(),
    ),
  );
}
