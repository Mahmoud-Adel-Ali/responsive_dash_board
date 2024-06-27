import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 22),
        ],
      ),
    );
  }
}

