import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

Widget catogeryOption(
    {required value, required VoidCallback onSelected, required String title}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          // setState(() {
          //   _selectedCatogry = value;
          // });
          // debugPrint(_selectedCatogry);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              // color: _selectedCatogry != value ? Clr.grey1 : Clr.teal2,
              ),
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
