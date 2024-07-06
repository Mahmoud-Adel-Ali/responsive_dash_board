import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      data,
      
    );
  }

  PieChartData data = PieChartData(
    sectionsSpace: 0,
    sections: [
      PieChartSectionData(
        color: const Color(0xff208CC8),
        value: 40,
        radius: 50,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xff4EB7F2),
        value: 25,
        radius: 50,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xff064061),
        value: 20,
        radius: 50,
        showTitle: false,
      ),
      PieChartSectionData(
        color: const Color(0xffE2DECD),
        value: 22,
        radius: 50,
        showTitle: false,
      ),
    ],
  );
}
