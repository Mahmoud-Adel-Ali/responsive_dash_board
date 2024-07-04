import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dots_indecator.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardPageView extends StatefulWidget {
  const MyCardPageView({super.key});

  @override
  State<MyCardPageView> createState() => _MyCardPageViewState();
}

class _MyCardPageViewState extends State<MyCardPageView> {
  int currentIndex = 0 , numOfDot = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          onPageChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
          children: List.generate(numOfDot, (index) => const MyCard()),
        ),
        const SizedBox(height: 16),
        DotsIndecator(currentIndex: currentIndex, numOfDot: numOfDot),
      ],
    );
  }
}
