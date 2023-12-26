import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class ChargingScreen extends StatefulWidget {
  const ChargingScreen({super.key});

  @override
  State<ChargingScreen> createState() => _ChargingScreenState();
}

class _ChargingScreenState extends State<ChargingScreen> {
  int chargingPercent = 40;
  List<Color> chargingColor = [
    Colors.green,
    Colors.orange,
    Colors.yellow,
    Colors.red
  ];

  Color getChargingColor(int chargingPercent) {
    if (chargingPercent <= 20) {
      return Colors.red;
    } else if (chargingPercent > 20 && chargingPercent <= 40) {
      return Colors.yellow;
    } else if (chargingPercent > 40 && chargingPercent <= 60) {
      return Colors.amber;
    } else if (chargingPercent > 60 && chargingPercent <= 100) {
      return Colors.green;
    } else {
      return Colors.white;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chargingPercent = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        backgroundColor: Clr.black,
        title: Text(
          "Charging",
          style: Style.appTitleTextStyle(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                icon: const Icon(
                  Icons.qr_code,
                  size: 50,
                  color: Clr.white,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: getChargingColor(chargingPercent),
              radius: 100,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      spreadRadius: 10, blurRadius: 10, color: Colors.black)
                ], shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: Clr.black,
                  radius: 80,
                  child: Text(
                    "$chargingPercent%",
                    style: Style.headingTextStyle(
                        fontSize: 36,
                        fontFamily: AppFont.avenir,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(13),
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Clr.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        height: 120,
                        width: 120,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.share,
                                size: 30,
                              ),
                              Expanded(
                                  child: Center(
                                      child: Text(
                                "Find my station",
                                textAlign: TextAlign.left,
                                style: Style.headingTextStyle(
                                    fontSize: 16,
                                    fontFamily: AppFont.montserrat),
                              )))
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Clr.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        height: 120,
                        width: 120,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.share,
                                size: 30,
                              ),
                              Expanded(
                                  child: Center(
                                      child: Text(
                                "Find my station",
                                textAlign: TextAlign.left,
                                style: Style.headingTextStyle(
                                    fontSize: 16,
                                    fontFamily: AppFont.montserrat),
                              )))
                            ]),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Clr.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: 250,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.more_horiz,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "More",
                            style: Style.headingTextStyle(
                                fontSize: 16, fontFamily: AppFont.montserrat),
                          )
                        ]),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
