import 'package:carousel_slider/carousel_slider.dart';
import 'package:dino/component/app_drawer.dart';

import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/url.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  CarouselController carouselController = CarouselController();
  int _currentIndex = 0;

  List<String> rideMode = ["RIDE", "SPORT", "WARP"];
  List<Color> modeColor = [Clr.teal, Clr.red, Clr.green];
  List<int> modeRange = [120, 80, 60];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Clr.black,
      appBar: AppBar(
        backgroundColor: Clr.black,
        automaticallyImplyLeading:
            false, // this will hide Drawer hamburger icon
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: Image.asset(Dir.menuIcon)),
          const SizedBox(
            width: 20,
          )
        ], // this will hide endDrawer hamburger icon
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 24,
                          color: Clr.white,
                          fontFamily: AppFont.avenir),
                    ),
                    Text(
                      'Amjad Ali',
                      style: TextStyle(
                          fontSize: 24,
                          color: Clr.white,
                          fontFamily: AppFont.avenir,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(

                      // color: Colors.,
                      image: DecorationImage(
                    image: AssetImage(
                      Dir.bikeImage1,
                    ),
                    fit: BoxFit.cover,
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Clr.black.withOpacity(0.4),
                            Clr.black.withOpacity(0.1),
                            Clr.black.withOpacity(0.4),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.1, 1, 0.1]),
                    ),
                  ),
                ),
                const Text(
                  // assets/image
                  "OUR BIKE NAME",
                  style: TextStyle(
                    fontFamily: AppFont.nebula,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(children: [
              SizedBox(
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        carouselController.previousPage();
                      },
                      icon: const Icon(
                        CupertinoIcons.left_chevron,
                        size: 15,
                      ),
                    ),
                    Expanded(
                      child: CarouselSlider(
                        carouselController:
                            carouselController, // give the controller
                        options: CarouselOptions(
                            enlargeCenterPage: true,
                            onPageChanged: (index, _) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }
                            // autoPlay: true,
                            ),
                        items: rideMode.map((mode) {
                          return Center(
                              child: Text(
                            mode,
                            style: const TextStyle(
                                letterSpacing: 30,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                fontFamily: AppFont.montserrat),
                          ));
                        }).toList(),
                      ),
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {
                          // use the controller to change the current page
                          carouselController.nextPage();
                        },
                        icon: const Icon(
                          CupertinoIcons.right_chevron,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 70,
              child: Divider(
                height: 4,
                thickness: 4,
                color: modeColor[_currentIndex],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "80",
                              style: TextStyle(
                                  fontSize: 18, fontFamily: AppFont.montserrat),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppFont.montserrat),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Charge",
                          style: Style.fadeTextStyle(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              modeRange[_currentIndex].toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: AppFont.montserrat),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                "km",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppFont.montserrat),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Range",
                          style: Style.fadeTextStyle(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "1250",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: AppFont.montserrat),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                "km",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: AppFont.montserrat),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Total Distance",
                          style: Style.fadeTextStyle(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // width: 300,
              height: 300,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Clr.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearest charging station",
                      style: Style.fadeTextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "5 Available",
                      style: Style.fadeTextStyle(),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(AppUrl.mapImage))),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
