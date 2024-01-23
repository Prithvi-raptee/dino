import 'dart:ui';

import 'package:dino/constant/clr.dart';
import 'package:dino/screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'explore/exploreLandingPageNavigation.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      body: Stack(
        children: [
          // The below container is temporarily created to access the Explore Section.
          Container(
              child: Align(
                child: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Clr.teal2),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ExploreLandingPageNavigation()));
                      },
                      child: const Text(
                        "Explore",
                        style: TextStyle(color: Clr.white),
                      )),
                ),
              )
          ),
          Container(
            decoration: const BoxDecoration(
                // gradient: Gradient.linear(, to, colors)
                ),
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/image/bike_image2.png",
                color: Colors.teal, colorBlendMode: BlendMode.color),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 90,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40),
                alignment: Alignment.centerLeft,
                child: const Column(
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
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 75),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Clr.teal2),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ExploreLandingPageNavigation()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore Page",
                          style: TextStyle(color: Clr.white, fontSize: 22),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Clr.white,
                        )
                      ],
                    )),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 75),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Clr.teal2),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(color: Clr.white, fontSize: 22),
                        ),
                        SizedBox(
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
        ],
      ),
    );
  }
}
