import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/aadaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      desktopLayout: (context) => const DesktoopLayout(),
      tabletLayout: (context) => const SizedBox(),
      mobileLayout: (context) => const SizedBox(),
    );
  }
}

class DesktoopLayout extends StatelessWidget {
  const DesktoopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}