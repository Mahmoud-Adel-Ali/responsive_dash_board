import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
          title: currentIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyless.styleSemiBold18(context)
              .copyWith(color: currentIndex == 0 ? const Color(0xff208CC8) : null),
          color: const Color(0xff208CC8),
          value: 40,
          radius: currentIndex == 0 ? 45: 40,
          // showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),titlePositionPercentageOffset: currentIndex == 1 ? -1.5 : null,
          title: currentIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyless.styleSemiBold18(context)
              .copyWith(color: currentIndex == 1 ? const Color(0xff208CC8) : null),
          value: 25,
          radius: currentIndex == 1 ? 45: 40,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),titlePositionPercentageOffset: currentIndex == 2 ? 1.5 : null,
          title: currentIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyless.styleSemiBold18(context)
              .copyWith(color: currentIndex == 2 ? const Color(0xff208CC8) : null),
          value: 20,
          radius: currentIndex == 2 ? 45: 40,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),titlePositionPercentageOffset: currentIndex == 3 ? -1.2 : null,
          title: currentIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyless.styleSemiBold18(context)
              .copyWith(color: currentIndex == 3 ? const Color(0xff208CC8) : null),
          value: 22,
          radius: currentIndex == 3 ? 45: 40,
        ),
      ],
    );
    return AspectRatio(aspectRatio: 1, child: PieChart(pieChartData));
  }
}
