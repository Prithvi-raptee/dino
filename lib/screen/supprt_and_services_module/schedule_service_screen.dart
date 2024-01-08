import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:dino/screen/supprt_and_services_module/schedule_service_slot_screen.dart';
import 'package:flutter/material.dart';

class ScheduleServiceScreen extends StatefulWidget {
  const ScheduleServiceScreen({super.key});

  @override
  State<ScheduleServiceScreen> createState() => _ScheduleServiceScreenState();
}

class _ScheduleServiceScreenState extends State<ScheduleServiceScreen> {
  Color selectedColor = Clr.teal2;
  String selectedService = "general";
  String selectedSeverity = "minor";
  String selectedMovable = "movable";
  String selectedServiceMode = "self";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Schedule Service"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Select type of services",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.avenir,
                        color: Clr.white1),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedService = "general";
                          });
                        },
                        child: Container(
                          // height: 140,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedService == "general"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "General Service",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.white1),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Periodic services so that we take care of your bike",
                                  style: Style.fadeTextStyle(
                                      color: Clr.white1, fontSize: 10),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedService = "specific";
                          });
                        },
                        child: Container(
                          // height: 140,
                          margin: const EdgeInsets.all(3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedService == "specific"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Specific Issue",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.white1),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "For any specific issue in your motorcycle",
                                  style: Style.fadeTextStyle(
                                      color: Clr.white1, fontSize: 10),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedService = "accident";
                          });
                        },
                        child: Container(
                          // height: 140,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedService == "accident"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Accident Service",
                                  style: Style.fadeTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Clr.white1),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Accidental Damage",
                                  style: Style.fadeTextStyle(
                                      color: Clr.white1, fontSize: 10),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "What is the severity of the issue?",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.avenir,
                        color: Clr.white1),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedSeverity = "minor";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedSeverity == "minor"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Minor",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          selectedSeverity = "major";
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedSeverity == "major"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Major",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "What is the issue?",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppFont.avenir,
                      color: Clr.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    color: Clr.grey1,
                    // height: 200,
                    child: TextFormField(
                      scrollPadding: const EdgeInsets.all(0),
                      enabled: true,
                      minLines: 5,
                      maxLines: 10,
                      decoration: const InputDecoration(
                        hintText: "Describe your issue..",
                        border: InputBorder.none,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Movable or immovable",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.avenir,
                        color: Clr.white1),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedMovable = "movable";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedMovable == "movable"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Movable",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          selectedMovable = "immovable";
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedMovable == "immovable"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Immovable",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Select mode of service:",
                    style: Style.fadeTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFont.avenir,
                        color: Clr.white1),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedServiceMode = "self";
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedServiceMode == "self"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Self drop",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          selectedServiceMode = "pickup";
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedServiceMode == "pickup"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "Pick up and drop",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          selectedServiceMode = "onsite";
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedServiceMode == "onsite"
                                  ? selectedColor
                                  : Clr.grey1),
                          child: Text(
                            "On site service",
                            style: Style.fadeTextStyle(
                                fontSize: 10, color: Clr.white1),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 30,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScheduleServiceSlotScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Clr.teal2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Pick Slot",
                      style: Style.fadeTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Clr.white),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// Widget catogeryOption(
//     {required value, required VoidCallback onSelected, required String title}) {
//   return Expanded(
//     child: Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             _selectedCatogry = value;
//           });
//           debugPrint(_selectedCatogry);
//         },
//         child: Container(
//           padding: const EdgeInsets.all(8),
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               color: _selectedCatogry != value ? Clr.grey1 : Clr.teal2),
//           child: Text(
//             title,
//             style: Style.fadeTextStyle(
//                 fontWeight: FontWeight.w700, color: Clr.white1),
//           ),
//         ),
//       ),
//     ),
//   );
// }
