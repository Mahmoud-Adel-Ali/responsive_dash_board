import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Expanded(
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            IncomeHeader(),
            SizedBox(height: 15),
            Expanded(child: IncomeChart()),
          ],
        ),
      ),
    );
  }
}
