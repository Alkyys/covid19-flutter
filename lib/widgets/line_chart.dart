import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../contants.dart';

class LineReportChart extends StatelessWidget {

  Color iconColor;

  LineReportChart({this.iconColor});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSports(iconColor),
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              colors: [PrimaryColorL],
              barWidth: 4,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSports(iconColor) {
    switch(iconColor.toString()) {
      case "Color(0xffff8c00)": {
        return [
          FlSpot(0, .5),
          FlSpot(1, 1.5),
          FlSpot(2, .5),
          FlSpot(3, .7),
          FlSpot(4, .2),
          FlSpot(5, 2),
          FlSpot(6, 1.5),
          FlSpot(7, 10.7)
        ];
      }
      break;

      case "Color(0xffff2d55)": {
        return [
          FlSpot(0, .5),
          FlSpot(1, 1.5),
          FlSpot(2, .5),
          FlSpot(3, .7),
          FlSpot(4, .2),
          FlSpot(5, 2),
          FlSpot(6, 1.5),
          FlSpot(7, 19.7)
        ];
      }
      break;

      case "Color(0xff50e3c2)": {
        return [
          FlSpot(0, .5),
          FlSpot(1, 1.5),
          FlSpot(2, .5),
          FlSpot(3, .7),
          FlSpot(4, .2),
          FlSpot(5, 2),
          FlSpot(6, 1.5),
          FlSpot(7, 5.7)
        ];
      }
      break;

      case "Color(0xff5856d6)": {
        return [
          FlSpot(0, .5),
          FlSpot(1, 1.5),
          FlSpot(2, .5),
          FlSpot(3, .7),
          FlSpot(4, .2),
          FlSpot(5, 2),
          FlSpot(6, 1.5),
          FlSpot(7, 1.7)
        ];
      }
      break;

      default: {
        return [
          FlSpot(0, 1),
          FlSpot(1, 1),
          FlSpot(2, 1),
          FlSpot(3, 1),
          FlSpot(4, 1),
          FlSpot(5, 1),
          FlSpot(6, 1),
          FlSpot(7, 1)
        ];
      }
      break;
    }
  }
}
