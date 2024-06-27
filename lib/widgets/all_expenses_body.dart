import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AllExpensesItem(
          item: AllExpensesItemModel(
              img: AppImages.imagesExpenses,
              title: 'Balance',
              date: 'April 2022',
              price: 20.129),
        )
      ],
    );
  }
}
