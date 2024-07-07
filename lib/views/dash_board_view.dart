import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/aadaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xfff7f9fa),
      appBar: MediaQuery.sizeOf(context).width <= 750
          ? AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: Colors.white),
              ),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => const DesktoopLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        mobileLayout: (context) => const DashboardMobileLayout(),
      ),
    );
  }
}
