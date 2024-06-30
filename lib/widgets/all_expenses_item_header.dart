// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  AllExpensesItemHeader({
    super.key,
    required this.item,
    this.imageBackgroundColor,
    this.imageColor,
  });
  Color? imageBackgroundColor;
  Color? imageColor;
  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: imageBackgroundColor ?? const Color(0xffFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              item.img,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
         Icon(
          Icons.keyboard_arrow_right_outlined,
          color:imageColor ?? const Color(0xff064061),
        )
      ],
    );
  }
}
