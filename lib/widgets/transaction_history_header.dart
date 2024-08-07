import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyless.styleSemiBold20(context),
        ),
        Text(
          'see all',
          style: AppStyless.styleSemiBold16(context).copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
