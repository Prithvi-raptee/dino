import 'dart:async';

import 'package:dino/screen/starter_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const StarterScreen()));
    });
    return const Scaffold(
      body: Center(
        child: Text("Raptee"),
      ),
    );
  }
}
