import 'package:dino/component/style.dart';
import 'package:dino/constant/clr.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key});
  final Color leftBarColor = Colors.yellow;
  final Color rightBarColor = Colors.red;
  final Color avgColor = Colors.redAccent;
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final double width = 5;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 0, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 3, 20);
    final barGroup8 = makeGroupData(7, 3, 20);
    final barGroup9 = makeGroupData(8, 3, 80);
    final barGroup10 = makeGroupData(9, 3, 80);
    final barGroup11 = makeGroupData(10, 5, 12);
    final barGroup12 = makeGroupData(11, 16, 12);
    final barGroup13 = makeGroupData(12, 18, 5);
    final barGroup14 = makeGroupData(13, 20, 16);
    final barGroup15 = makeGroupData(14, 17, 6);
    final barGroup16 = makeGroupData(15, 19, 1.5);
    final barGroup17 = makeGroupData(16, 3, 20);
    final barGroup18 = makeGroupData(17, 3, 20);
    final barGroup19 = makeGroupData(18, 3, 80);
    final barGroup20 = makeGroupData(19, 3, 80);
    final barGroup21 = makeGroupData(20, 5, 12);
    final barGroup22 = makeGroupData(21, 16, 12);
    final barGroup23 = makeGroupData(22, 18, 5);
    final barGroup24 = makeGroupData(23, 20, 16);
    final barGroup25 = makeGroupData(24, 17, 6);
    final barGroup26 = makeGroupData(25, 19, 1.5);
    final barGroup27 = makeGroupData(26, 3, 20);
    final barGroup28 = makeGroupData(27, 3, 20);
    final barGroup29 = makeGroupData(28, 3, 80);
    final barGroup30 = makeGroupData(29, 3, 80);
    final barGroup31 = makeGroupData(30, 3, 80);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9,
      barGroup10,
      barGroup11,
      barGroup12,
      barGroup13,
      barGroup14,
      barGroup15,
      barGroup16,
      barGroup17,
      barGroup18,
      barGroup19,
      barGroup20,
      barGroup21,
      barGroup22,
      barGroup23,
      barGroup24,
      barGroup25,
      barGroup26,
      barGroup27,
      barGroup28,
      barGroup29,
      barGroup30,
      barGroup31,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: BarChart(
        BarChartData(
          baselineY: 12,
          maxY: 100,
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.grey,
              getTooltipItem: (a, b, c, d) => null,
            ),
            touchCallback: (FlTouchEvent event, response) {
              if (response == null || response.spot == null) {
                setState(() {
                  touchedGroupIndex = -1;
                  showingBarGroups = List.of(rawBarGroups);
                });
                return;
              }

              touchedGroupIndex = response.spot!.touchedBarGroupIndex;

              setState(() {
                if (!event.isInterestedForInteractions) {
                  touchedGroupIndex = -1;
                  showingBarGroups = List.of(rawBarGroups);
                  return;
                }
                showingBarGroups = List.of(rawBarGroups);
                if (touchedGroupIndex != -1) {
                  var sum = 0.0;
                  for (final rod
                      in showingBarGroups[touchedGroupIndex].barRods) {
                    sum += rod.toY;
                  }
                  final avg =
                      sum / showingBarGroups[touchedGroupIndex].barRods.length;

                  showingBarGroups[touchedGroupIndex] =
                      showingBarGroups[touchedGroupIndex].copyWith(
                    barRods:
                        showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                      return rod.copyWith(toY: avg, color: widget.avgColor);
                    }).toList(),
                  );
                }
              });
            },
          ),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: bottomTitles,
                  reservedSize: 40,
                  interval: 5),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 1,
                getTitlesWidget: leftTitles,
              ),
            ),
          ),
          borderData: FlBorderData(
              show: true,
              border: const Border(
                  bottom: BorderSide(color: Clr.white1, width: 2))),
          barGroups: showingBarGroups,
          gridData: const FlGridData(show: false),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 20) {
      text = '20';
    } else if (value == 40) {
      text = '40';
    } else if (value == 60) {
      text = '60';
    } else if (value == 80) {
      text = '80';
    } else if (value == 100) {
      text = '100';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5,
      child: Text(text,
          style: Style.fadeTextStyle(color: Clr.white1, fontSize: 9)),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>[
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      "8",
      '9',
      "10",
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23',
      '24',
      '25',
      '26',
      '27',
      '28',
      '29',
      '30',
      '31'
    ];

    final Widget text = Text(titles[value.toInt()],
        style: Style.fadeTextStyle(color: Clr.white1, fontSize: 9));

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          fromY: y1 - 10,
          color: widget.leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          fromY: y2 - 15,
          color: widget.rightBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2 + 40,
          color: Clr.green,
          width: width,
        ),
      ],
    );
  }
}
