import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TransactionHistoryHeader(),
        const SizedBox(height: 15),
        const Text(
          '13 April 2022',
          style: AppStyless.styleMedium16,
        ),
        const SizedBox(height: 25),
        TransactionHistoryItem(
          item: TransactionModel(
            title: 'Cash Withdrawal',
            date: '13 Apr, 2022',
            amount: r'$20,129',
            isWithDrawal: true,
          ),
        ),
      ],
    );
  }
}
