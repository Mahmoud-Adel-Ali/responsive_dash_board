import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DesktoopLayout extends StatelessWidget {
  const DesktoopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: AllExpensesAndQuickInvioceSection()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              // MyCardAndTransactionHistory(),
              SizedBox(height: 20),
              IncomeSection(),
            ],
          ),
        )
      ],
    );
  }
}
