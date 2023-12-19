import 'package:carousel_slider/carousel_slider.dart';
import 'package:dino/component/drawer_button.dart';
import 'package:dino/constant/clr.dart';
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

  List<String> rideMode = ["RIDE", "SPORT", "WARP"];
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
          DrawerButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          const SizedBox(
            width: 20,
          )
        ], // this will hide endDrawer hamburger icon
      ),
      drawer: Drawer(
        backgroundColor: Clr.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            CustDrawerButton(),
            CustDrawerButton(),
            CustDrawerButton(),
            CustDrawerButton()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 18, color: Clr.white),
                    ),
                    Text(
                      'Amjad Ali',
                      style: TextStyle(
                          fontSize: 20,
                          color: Clr.white,
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
                      "assets/image/bike_image1.png",
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                const Text(
                  // assets/image
                  "Bike Name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.normal),
                )
              ],
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
                      icon: const Icon(CupertinoIcons.left_chevron),
                    ),
                    Expanded(
                      child: CarouselSlider(
                        carouselController:
                            carouselController, // give the controller
                        options: CarouselOptions(
                            // autoPlay: true,
                            ),
                        items: rideMode.map((mode) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 5),
                            child: Center(
                                child: Text(
                              mode,
                              style: TextStyle(letterSpacing: 30),
                            )),
                          );
                        }).toList(),
                      ),
                    ),
                    Center(
                      child: IconButton(
                        onPressed: () {
                          // use the controller to change the current page
                          carouselController.nextPage();
                        },
                        icon: Icon(CupertinoIcons.right_chevron),
                      ),
                    ),
                  ],
                ),
              )
            ]),
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
                                fontSize: 20,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("%")
                          ],
                        ),
                        Text(
                          "Charge",
                          style: TextStyle(color: Clr.grey),
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
                            Text(
                              "120",
                              style: TextStyle(
                                fontSize: 20,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("km")
                          ],
                        ),
                        Text(
                          "Range",
                          style: TextStyle(color: Clr.grey),
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
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text("km")
                          ],
                        ),
                        Text(
                          "Total Distance",
                          style: TextStyle(color: Clr.grey),
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
                    Text("Nearest charging station"),
                    Text(
                      "1 Available",
                      style: TextStyle(fontSize: 12, color: Clr.grey),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(UrlData.mapImage))),
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
