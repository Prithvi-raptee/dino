import 'package:flutter/material.dart';

import '../constant/app_font.dart';
import '../constant/clr.dart';

class ElevatedCardButton3 extends StatelessWidget {
  final List<CustomElevatedButton> buttons;

  const ElevatedCardButton3({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        gradient: LinearGradient(
          colors: [
            Clr.grey.withOpacity(0.5),
            Clr.grey.withOpacity(0.1),
          ],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: buttons[0],
                ),
              ],
            ),
            const SizedBox(height: 16.0,),
            Row(
              children: [
                Expanded(
                  child: buttons[1],
                ),

                SizedBox(width: 15,),

                Expanded(
                  child: buttons[2],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: buttons[3],
                ),

                SizedBox(width: 15,),

                Expanded(
                  child: buttons[4],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final Color buttonColor;
  final double borderRadius; // Add borderRadius property
  final VoidCallback onPressed;

  const CustomElevatedButton({super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 0.0, // Remove elevation to blend with the card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 30.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}