import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(16)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(item: item),
          const SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyless.styleSemiBold16,
          ),
          Text(
            item.date,
            style: AppStyless.styleReguler14,
          ),
          const SizedBox(height: 10),
          Text(
            '\$${item.price.toString()}',
            style: AppStyless.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xff4EB7F2)),
            borderRadius: BorderRadius.circular(16)),
        color: const Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            item: item,
            imageBackgroundColor: Colors.white.withOpacity(0.1),
            imageColor: const Color(0xffFFFFFF),
          ),
          const SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyless.styleSemiBold16
                .copyWith(color: const Color(0xffffffff)),
          ),
          Text(
            item.date,
            style: AppStyless.styleReguler14
                .copyWith(color: const Color(0xfffafafa)),
          ),
          const SizedBox(height: 10),
          Text(
            '\$${item.price.toString()}',
            style: AppStyless.styleSemiBold24
                .copyWith(color: const Color(0xffffffff)),
          ),
        ],
      ),
    );
  }
}
