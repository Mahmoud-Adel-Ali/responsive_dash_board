import 'package:flutter/material.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32.0 : 8.0,
      height: 8.0,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: isActive
            ? const Color(0xff4EB7F2)
            : const Color(0xffE8E8E8), //4EB7F2
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
