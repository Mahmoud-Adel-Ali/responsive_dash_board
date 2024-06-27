import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyless.styleSemiBold20,
        ),
        SizedBox(width: 10),
        Row(
          children: [
            Text(
              'Monthly',
              style: AppStyless.styleMedium16,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff064061),
              size: 35,
            ),
          ],
        ),
      ],
    );
  }
}
