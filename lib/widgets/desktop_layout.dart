import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktoopLayout extends StatelessWidget {
  const DesktoopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width:20),
        Expanded(child: Column(
          children: [
            AllExpenses(),
          ],
        ))
      ],
    );
  }
}


