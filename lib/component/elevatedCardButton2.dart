import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class ElevatedCardButton2 extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final Color cardColor;
  final VoidCallback onPressed;

  ElevatedCardButton2({super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
    required this.cardColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 5.0,
      shadowColor: Clr.black,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
        ),
      ),
    );
  }
}
