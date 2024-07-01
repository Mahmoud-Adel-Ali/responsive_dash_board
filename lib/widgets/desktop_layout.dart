import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoive.dart';

class DesktoopLayout extends StatelessWidget {
  const DesktoopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(width: 20),
                Expanded(child: AllExpenses()),
                SizedBox(height: 20),
                Expanded(child: QuickInvoice()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
