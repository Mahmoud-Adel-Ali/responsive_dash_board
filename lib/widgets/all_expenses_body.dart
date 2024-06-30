// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  int selectdIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) =>Expanded( flex: 1, child: AllExpensesItem(item: e)) ,).toList(),
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectdIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpensesItem(
                  item: item,
                  isSelected: selectdIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      img: AppImages.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: 20.129,
    ),
    AllExpensesItemModel(
      img: AppImages.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: 20.129,
    ),
    AllExpensesItemModel(
      img: AppImages.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: 20.129,
    ),
  ];
}
