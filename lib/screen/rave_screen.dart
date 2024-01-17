import 'package:flutter/material.dart';

import '../component/appbar.dart';

class RaveScreen extends StatefulWidget {
  const RaveScreen({super.key});

  @override
  State<RaveScreen> createState() => _RaveScreenState();
}

class _RaveScreenState extends State<RaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarToHome(context, "RAVE"),
      body: const Center(
        child: Text("This is Rave Screen"),
      ),
    );
  }
}
