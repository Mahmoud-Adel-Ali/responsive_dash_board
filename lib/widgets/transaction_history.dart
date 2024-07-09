import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TransactionHistoryHeader(),
        const SizedBox(height: 15),
        Text('13 April 2022', style: AppStyless.styleMedium16),
        const SizedBox(height: 25),
        const TransactionHistoryListView(),
      ],
    );
  }
}
