import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/custom_user_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.hinttext});
  final String title, hinttext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyless.styleMedium16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        CustomUserTextField(hinttext: hinttext),
      ],
    );
  }
}
