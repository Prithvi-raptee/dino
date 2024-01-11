import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/constant/directory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ServiceDetailsScreen extends StatelessWidget {
  ServiceDetailsScreen({super.key});

  bool isCompleted = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Service Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(color: Clr.grey1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Registration",
                                style: Style.fadeTextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "TN07DE0047",
                                style: Style.fadeTextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Clr.white),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ODO",
                                style: Style.fadeTextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "3456 KM",
                                style: Style.fadeTextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Clr.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                      left: -50,
                      bottom: -30,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset(Dir.bikeImage4))),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    "Service Details",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        color: Clr.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(color: Clr.grey1),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service Category",
                                    style: Style.fadeTextStyle(),
                                  ),
                                  Text(
                                    "Genral Services",
                                    style: Style.fadeTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Clr.white),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Severity",
                                    style: Style.fadeTextStyle(),
                                  ),
                                  Text(
                                    "Minor",
                                    style: Style.fadeTextStyle(
                                        fontSize: 14, color: Clr.white),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service Type",
                                    style: Style.fadeTextStyle(),
                                  ),
                                  Text(
                                    "Pick up & Drop",
                                    style: Style.fadeTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Clr.teal),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Pick up Time",
                                    style: Style.fadeTextStyle(),
                                  ),
                                  Text(
                                    "05 Jan, 11:00 am",
                                    style: Style.fadeTextStyle(
                                        fontSize: 14, color: Clr.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Remarks",
                              style: Style.fadeTextStyle(),
                            ),
                            Text(
                              "There is an issue with the brakes.",
                              style: Style.fadeTextStyle(color: Clr.white),
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service Engineer details",
                  style: Style.fadeTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Clr.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  color: Clr.grey1,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(Dir.profileDummyImage),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dante Thunderstone',
                                style: Style.fadeTextStyle(
                                    fontSize: 14,
                                    color: Clr.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'RAPTEE DINO MOTORCYCLES',
                                style: Style.fadeTextStyle(fontSize: 9),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            // height: 100,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: RatingBar.builder(
                                wrapAlignment: WrapAlignment.start,
                                initialRating: 03,
                                minRating: 0,
                                itemSize: 5,
                                ignoreGestures: true,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: Icon(
                                    Icons.star,
                                    // size: 20,
                                    color: Colors.amber,
                                  ),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Estimated Delivery:",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Clr.grey1,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Estimated Date",
                                style: Style.fadeTextStyle(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "10th Jan 2024",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Estimated Cost",
                                style: Style.fadeTextStyle(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "2500",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.teal),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "Remarks",
                              style: Style.fadeTextStyle(),
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                            style: Style.fadeTextStyle(color: Clr.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Remarks:",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Clr.grey1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Delivery",
                              style: Style.fadeTextStyle(),
                            ),
                          ),
                          Text(
                            'On Time',
                            style: Style.fadeTextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Clr.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Payment Status",
                              style: Style.fadeTextStyle(),
                            ),
                          ),
                          Text(
                            isCompleted ? "Completed" : 'Pending',
                            style: Style.fadeTextStyle(
                                fontSize: 14,
                                color: isCompleted ? Clr.green : Clr.pending,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Rating",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Clr.white),
                  ),
                ),
                RatingBar.builder(
                    itemSize: 30,
                    glow: true,
                    glowColor: Clr.pending,
                    glowRadius: 5,
                    initialRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Clr.pending,
                        ),
                    onRatingUpdate: (double value) {})
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 30,
                child: ElevatedButton(
                    // focusNode: ,

                    style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: Clr.grey,
                        backgroundColor: Clr.teal2,
                        shape: const RoundedRectangleBorder()),
                    onPressed: isCompleted ? null : () {},
                    child: Text(
                      "Complete Payment",
                      style: Style.fadeTextStyle(
                          color: Clr.white, fontWeight: FontWeight.w700),
                    )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
