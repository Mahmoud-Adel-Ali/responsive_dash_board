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
        SizedBox(width: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 20),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
