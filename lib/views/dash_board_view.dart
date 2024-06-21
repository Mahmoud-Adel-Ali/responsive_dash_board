import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/aadaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => const DesktoopLayout(),
        tabletLayout: (context) => const SizedBox(),
        mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
