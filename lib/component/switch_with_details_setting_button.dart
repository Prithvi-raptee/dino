import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

Container swithWithDetailsWidget(
    {required bool initialValue,
    required String title,
    required String desc,
    required VoidCallback onChanged}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    padding: const EdgeInsets.all(15),
    color: Clr.grey1,
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Style.fadeTextStyle(
                    color: Clr.white, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              if (desc.isNotEmpty)
                Text(
                  desc,
                  style: Style.fadeTextStyle(
                      fontSize: 10,
                      color: Clr.grey,
                      fontWeight: FontWeight.w500),
                )
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 10,
              child: Switch(
                  activeColor: Clr.teal,
                  activeTrackColor: Clr.teal,
                  thumbColor:
                      MaterialStateProperty.resolveWith((states) => Clr.white),
                  value: initialValue,
                  onChanged: (newSetting) {
                    onChanged();
                  }),
            ),
          ),
        )
      ],
    ),
  );
}
