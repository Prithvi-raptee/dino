import 'package:dino/constant/clr.dart';
import 'package:dino/screen/login_screen.dart';
import 'package:flutter/material.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 90,
          ),
          Container(
            padding: const EdgeInsets.only(left: 40),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join the",
                  style: TextStyle(
                      color: Clr.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "EV-olution",
                  style: TextStyle(
                      color: Clr.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.withOpacity(0.8)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StarterScreenSecond()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(color: Clr.white, fontSize: 22),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Clr.white,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class StarterScreenSecond extends StatelessWidget {
  const StarterScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 90,
          ),
          Container(
            padding: const EdgeInsets.only(left: 40),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get ready for",
                  style: TextStyle(
                      color: Clr.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "THE FUTURE",
                  style: TextStyle(
                      color: Clr.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Colors.teal),
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(color: Clr.white, fontSize: 22),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Clr.white,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
