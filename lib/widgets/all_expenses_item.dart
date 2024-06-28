import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.item});
  final AllExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffFAFAFA),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(item.img),
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Color(0xff064061),
                )
              ],
            ),
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
      ),
    );
  }
}
