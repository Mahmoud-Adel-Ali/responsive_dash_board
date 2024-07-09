import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.item});
  final TransactionModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(item.title, style: AppStyless.styleSemiBold16(context)),
        subtitle: Text(item.date, style: AppStyless.styleMedium16(context)),
        trailing: Text(
          item.amount,
          style: AppStyless.styleSemiBold20(context).copyWith(
            color: item.isWithDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
