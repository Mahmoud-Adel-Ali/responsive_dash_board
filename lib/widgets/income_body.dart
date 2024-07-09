import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_item_list_tile.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    final double width = (MediaQuery.sizeOf(context).width);
    return width < 1270 && width > 1200
        ? const Row(children: [Expanded( child: Padding(
          padding: EdgeInsets.symmetric( horizontal:  16.0),
          child: DetailedIncomeChart(),
        ))])
        : const Row(
            children: [
              Expanded(flex: 2, child: IncomeChart()),
              // SizedBox(width: 10),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    IncomeItemListTile(
                      title: 'Design service',
                      value: 40,
                      leadingColor: Color(0xff208CC8),
                    ),
                    IncomeItemListTile(
                      title: 'Design product',
                      value: 25,
                      leadingColor: Color(0xff4EB7F2),
                    ),
                    IncomeItemListTile(
                      title: 'Product royalti',
                      value: 20,
                      leadingColor: Color(0xff064061),
                    ),
                    IncomeItemListTile(
                      title: 'Other',
                      value: 22,
                      leadingColor: Color(0xffE2DECD),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
