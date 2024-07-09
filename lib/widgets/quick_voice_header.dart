import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyless.styleSemiBold20(context),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xfffafafa),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
