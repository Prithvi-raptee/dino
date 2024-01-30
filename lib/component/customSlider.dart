import 'package:dino/component/style.dart';
import 'package:flutter/material.dart';

import '../constant/clr.dart';

class CustomSlider extends StatefulWidget {
  final String title;
  final double minValue;
  final double maxValue;
  final int divisions;
  final double currentValue;
  final ValueChanged<double> onChanged;
  final List<String>? labels;

  const CustomSlider({
    super.key,
    required this.title,
    required this.minValue,
    required this.maxValue,
    required this.divisions,
    required this.currentValue,
    required this.onChanged,
    this.labels,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
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
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: Clr.greybg202,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              widget.title,
              style: Style.fadeTextStyle(
                  color: Clr.white, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
                child: Slider(
                  thumbColor: Colors.white,
                  value: widget.currentValue,
                  max: widget.maxValue,
                  divisions: widget.divisions,
                  label: widget.currentValue.round().toString(),
                  min: widget.minValue,
                  activeColor: Colors.teal,
                  onChanged: widget.onChanged,
                ),
              ),
              if (widget.labels != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var label in widget.labels!)
                        Text(
                          label,
                          style: Style.fadeTextStyle(
                              color: Clr.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                    ],
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.minValue.toString(),
                        style: Style.fadeTextStyle(
                            color: Clr.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.maxValue.toString(),
                        style: Style.fadeTextStyle(
                            color: Clr.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
