import 'package:dino/component/appbar.dart';
import 'package:dino/component/style.dart';
import 'package:dino/constant/app_font.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

class RaiseTicketScreen extends StatefulWidget {
  const RaiseTicketScreen({super.key});

  @override
  State<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends State<RaiseTicketScreen> {
  String _selectedCatogry = "motorcycle";
  Color selectedColor = Clr.teal2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      appBar: appBar(context, "Raise a Ticket"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select catogery",
                    style: Style.fadeTextStyle(
                      fontFamily: AppFont.avenirBold,
                      color: Clr.white,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          catogeryOption(
                              title: "Motorcycle",
                              value: "motorcycle",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "motorcycle";
                                });
                              }),
                          catogeryOption(
                              title: "Dashboard",
                              value: "dashboard",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "dashboard";
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          catogeryOption(
                              title: "Charging",
                              value: "charging",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "charging";
                                });
                              }),
                          catogeryOption(
                              title: "App",
                              value: "app",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "app";
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          catogeryOption(
                              title: "Accessories",
                              value: "accessories",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "accessories";
                                });
                              }),
                          catogeryOption(
                              title: "Others",
                              value: "others",
                              onSelected: () {
                                setState(() {
                                  _selectedCatogry = "others";
                                });
                              }),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "What is the issue?",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: AppFont.avenirBold,
                        color: Clr.white),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
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
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Add an Image",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: AppFont.avenirBold,
                            color: Clr.white),
                      ),
                      Text(
                        " (Optional)",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: AppFont.montserrat,
                            color: Clr.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.2, color: Clr.white)),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: SizedBox(
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Clr.teal2,
                        shape: const RoundedRectangleBorder()),
                    onPressed: () {},
                    child: Text(
                      "Raise Ticket",
                      style: Style.fadeTextStyle(
                          color: Clr.white, fontWeight: FontWeight.bold),
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Expanded catogeryOption(
      {required value,
      required VoidCallback onSelected,
      required String title}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedCatogry = value;
            });
            debugPrint(_selectedCatogry);
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: _selectedCatogry != value ? Clr.grey1 : Clr.teal2),
            child: Text(
              title,
              style: Style.fadeTextStyle(
                  fontWeight: FontWeight.w700, color: Clr.white1),
            ),
          ),
        ),
      ),
    );
  }
}
