import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatefulWidget {
  const TransactionHistoryListView({
    super.key,
  });

  @override
  State<TransactionHistoryListView> createState() =>
      _TransactionHistoryListViewState();
}

class _TransactionHistoryListViewState
    extends State<TransactionHistoryListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TransactionHistoryItem(item: items[index]);
        });
  }

  List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$2,000',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];
}
