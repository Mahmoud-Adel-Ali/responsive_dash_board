import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvioceSection(),
          SizedBox(height: 20),
          MyCardAndTransactionHistory(),
          SizedBox(height: 20),
          IncomeSection(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
