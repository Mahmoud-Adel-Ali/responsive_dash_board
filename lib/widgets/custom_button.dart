import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.background,
  });
  final String text;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 62,
      color: background ?? const Color(0xffFFFFFF),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Color(0xff4EB7F2),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(20),
      onPressed: () {},
      child: Text(
        text,
        style: AppStyless.styleSemiBold16.copyWith(
            color: background != null
                ? const Color(0xffFFFFFF)
                : const Color(0xff4EB7F2)),
      ),
    );
  }
}
