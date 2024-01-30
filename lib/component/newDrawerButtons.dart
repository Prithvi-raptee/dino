import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/clr.dart';

class CustomDrawerButtons extends StatelessWidget {
  const CustomDrawerButtons({
    super.key,
    required this.icon,
    required this.title,
    required this.subTexts,
    required this.onPress,
    this.buttonColor = Clr.grey1,
    this.iconColor = Clr.white,
    this.textColor = Clr.white,
    this.subTextColor = Clr.white,
    this.subTextSeparator = '|',
  });

  final Widget icon;
  final String title;
  final List<String> subTexts;
  final Function onPress;
  final Color buttonColor;
  final Color iconColor;
  final Color textColor;
  final Color subTextColor;
  final String subTextSeparator;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor,
        ),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(15),
        //   gradient: LinearGradient(
        //     colors: [
        //       Clr.greybg202.withOpacity(0.9),
        //       Clr.greybg202.withOpacity(0.5),
        //     ],
        //     begin: AlignmentDirectional.topCenter,
        //     end: AlignmentDirectional.bottomCenter,
        //   ),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                icon,
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                for (int i = 0; i < subTexts.length; i++)
                  Row(
                    children: [
                      Text(
                        subTexts[i],
                        style: TextStyle(
                          color: subTextColor,
                          fontSize: 12,
                        ),
                      ),
                      if (i < subTexts.length - 1)
                        Text(
                          subTextSeparator,
                          style: TextStyle(
                            color: subTextColor,
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
