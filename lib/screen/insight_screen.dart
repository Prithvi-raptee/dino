import 'package:dino/component/style.dart';
import 'package:dino/constant/directory.dart';

import 'package:flutter/material.dart';

import '../constant/clr.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({super.key});

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Clr.black,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Clr.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Clr.black,
            bottom: TabBar(
              indicator: const BoxDecoration(color: Clr.teal2),
              dividerColor: Clr.teal2,
              labelColor: Clr.white,
              unselectedLabelColor: Clr.white,

              indicatorColor: Clr.teal2,
              // padding: const EdgeInsets.all(8),

              // indicatorWeight: 100,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "All Rides",
                      style: Style.fadeTextStyle(
                          color: Clr.white, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Ride Insights",
                      style: Style.fadeTextStyle(
                          color: Clr.white, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            title: Text(
              'Stats & Insights',
              style: Style.appTitleTextStyle(),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Container(),
              Container(
                color: Clr.black,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      height: 250,
                      decoration: const BoxDecoration(
                          color: Clr.black1,
                          image: DecorationImage(
                              image: AssetImage(Dir.bikeImage3),
                              fit: BoxFit.cover)),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Ride Score",
                                style: Style.fadeTextStyle(
                                    color: Clr.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text("9",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Clr.white,
                                      fontWeight: FontWeight.w900))
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
