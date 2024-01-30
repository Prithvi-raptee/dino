import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:flutter/material.dart';

Container SwitchButtonCard(
    {required bool initialValue,
    required String title,
    required String desc,
    required VoidCallback onChanged}) {
  return Container(
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      gradient: LinearGradient(
        colors: [
          Clr.greybg202.withOpacity(0.9),
          Clr.greybg202.withOpacity(0.5),
        ],
        begin: AlignmentDirectional.topCenter,
        end: AlignmentDirectional.bottomCenter,
      ),
    ),
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
                    color: Clr.white, fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 5,
              ),
              if (desc.isNotEmpty)
                Text(
                  desc,
                  style: Style.fadeTextStyle(
                      fontSize: 12,
                      color: Clr.white1,
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
