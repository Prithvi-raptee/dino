import 'package:dino/constant/app_font.dart';
import 'package:flutter/material.dart';

import '../constant/clr.dart';

class ElevatedCardButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color buttonColor;
  final VoidCallback? onPressed;

  ElevatedCardButton({
    required this.icon,
    required this.text,
    this.buttonColor = Colors.blue,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Clr.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: buttonColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 25.0,
                  color: Clr.white,
                ),
                const SizedBox(width: 7),
                Flexible(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Clr.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: AppFont.montserrat,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
