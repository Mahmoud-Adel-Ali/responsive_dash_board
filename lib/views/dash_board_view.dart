import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/aadaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => const DesktoopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
