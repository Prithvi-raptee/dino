import 'package:flutter/material.dart';

class RaveScreen extends StatefulWidget {
  const RaveScreen({super.key});

  @override
  State<RaveScreen> createState() => _RaveScreenState();
}

class _RaveScreenState extends State<RaveScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is Rave Screen"),
      ),
    );
  }
}
