import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_indecator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({
    super.key,
    required this.currentIndex,
    required this.numOfDot,
  });
  final int currentIndex, numOfDot;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        numOfDot,
        (index) => CustomDotIndecator(
          isActive: currentIndex == index ? true : false,
        ),
      ),
    );
  }
}
