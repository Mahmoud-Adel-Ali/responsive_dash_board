import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    var pieChartData = PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, p1) {
          currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          color: const Color(0xff208CC8),
          value: 40,
          radius: currentIndex == 0 ? 25:21,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          radius: currentIndex == 1 ? 25:21,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          radius: currentIndex == 2 ? 25:21,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          value: 22,
          radius: currentIndex == 3 ? 25:21,
          showTitle: false,
        ),
      ],
    );
    return AspectRatio(aspectRatio: 1,  child: PieChart(pieChartData));
  }
}
