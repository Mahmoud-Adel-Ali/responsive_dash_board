import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoive.dart';

class AllExpensesAndQuickInvioceSection extends StatelessWidget {
  const AllExpensesAndQuickInvioceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(width: 40),
          AllExpenses(),
          SizedBox(height: 20),
          QuickInvoice(),
        ],
      ),
    );
  }
}
