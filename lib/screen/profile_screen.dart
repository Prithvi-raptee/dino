import 'package:dino/component/barchart_widget.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:dino/constant/url.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: AppBar(
        backgroundColor: Clr.black,
        centerTitle: true,
        title: Text(
          "Profile",
          style: Style.appTitleTextStyle(),
        ),
        actions: [InkWell(onTap: () {}, child: const Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        CircularPercentIndicator(
                          startAngle: 125,
                          center: CircleAvatar(
                            radius: 50 - 5,
                            backgroundColor: Clr.grey,
                            backgroundImage: NetworkImage(AppUrl.profileImage),
                          ),
                          radius: 50.0,
                          lineWidth: 5.0,
                          backgroundColor: Clr.black,
                          percent: 0.6,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Clr.teal,
                        ),
                      ],
                    )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "60% completed",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: AppFont.montserrat,
                            color: Clr.teal),
                      ),
                      const Text(
                        "Amjad Ali",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: AppFont.sen,
                            color: Clr.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "mrx_amjad",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFont.avenir,
                          color: Clr.white1.withOpacity(0.8),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_outlined,
                          color: Clr.teal,
                          size: 30,
                        )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Clr.grey.withOpacity(0.1), Clr.black],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter)),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      Dir.bikeImage3,
                      // height: 300,
                    )),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TN05AP2000",
                          style: TextStyle(
                              color: Clr.white.withOpacity(0.5),
                              fontSize: 18,
                              fontFamily: AppFont.avenir),
                        ),
                        Text(
                          "BLAZE PERALTA",
                          style: TextStyle(
                              color: Clr.white.withOpacity(0.5),
                              fontSize: 18,
                              fontFamily: AppFont.avenir),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  const Padding(
                    padding: EdgeInsets.only(right: 25, bottom: 25),
                    child: SizedBox(
                      height: 70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "60",
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.w900),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "ODO",
                                textWidthBasis: TextWidthBasis.longestLine,
                                style: TextStyle(
                                    fontFamily: AppFont.montserrat,
                                    fontSize: 12,
                                    color: Clr.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "kms",
                                textWidthBasis: TextWidthBasis.longestLine,
                                style: TextStyle(
                                    fontFamily: AppFont.montserrat,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Clr.grey.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Basic Information",
                      style: Style.headingTextStyle(),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_outlined,
                          color: Clr.teal,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email ID:",
                          style: Style.fadeTextStyle(color: Clr.white1),
                        ),
                        Text("Contact no:",
                            style: Style.fadeTextStyle(color: Clr.white1)),
                        Text("Model:",
                            style: Style.fadeTextStyle(color: Clr.white1)),
                        Text("Emergency contact:",
                            style: Style.fadeTextStyle(color: Clr.white1)),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "someone@email.com",
                            style: Style.fadeTextStyle(),
                          ),
                          Text(
                            "7260004480",
                            style: Style.fadeTextStyle(),
                          ),
                          Text(
                            "RapteeT30:",
                            style: Style.fadeTextStyle(),
                          ),
                          Text(
                            "8888458928",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Clr.grey.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Insurance",
                      style: Style.headingTextStyle(),
                    ),
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Clr.grey.withOpacity(0.2)),
                        child: const Text(
                          "Download Invoice",
                          style: TextStyle(fontSize: 12, color: Clr.white),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Type",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "Something Random",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Issue date",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "04/11/2023",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry date",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "03/11/2024",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Clr.teal2),
                      onPressed: () {},
                      child: Text(
                        "Renew",
                        style: Style.fadeTextStyle(color: Clr.white),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Clr.grey.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subscription",
                      style: Style.headingTextStyle(color: Clr.white),
                    ),
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Clr.grey.withOpacity(0.2)),
                        child: const Text(
                          "Download Invoice",
                          style: TextStyle(fontSize: 12, color: Clr.white),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Type",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "Something Random",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Issue date",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "04/11/2023",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry date",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "03/11/2024",
                            style: Style.fadeTextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Clr.teal2),
                      onPressed: () {},
                      child: Text(
                        "Upgrage",
                        style: Style.fadeTextStyle(color: Clr.white),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Clr.grey.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ride Insights",
                      style: Style.headingTextStyle(),
                    ),
                    SizedBox(
                      height: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Clr.grey.withOpacity(0.2)),
                        child: const Text(
                          "View all",
                          style: TextStyle(fontSize: 12, color: Clr.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Avg Score",
                          style: Style.fadeTextStyle(color: Clr.white1),
                        ),
                        Text(
                          "9",
                          style: Style.appTitleTextStyle(
                              color: Clr.teal, fontSize: 28),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Efficiancy",
                            style: Style.fadeTextStyle(color: Clr.white1),
                          ),
                          Text(
                            "85%",
                            style: Style.appTitleTextStyle(
                                color: Clr.teal, fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: SizedBox(height: 100, child: BarChartSample2()))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
