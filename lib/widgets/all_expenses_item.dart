import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelected});
  final AllExpensesItemModel item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        duration: const Duration(milliseconds: 300),
        crossFadeState:
            isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        firstChild: InActiveExpensesItem(item: item),
        secondChild: ActiveExpensesItem(item: item));
  }
}
