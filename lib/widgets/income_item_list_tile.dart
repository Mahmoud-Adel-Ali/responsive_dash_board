import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class IncomeItemListTile extends StatelessWidget {
  const IncomeItemListTile({
    super.key,
    required this.title,
    required this.value,
    required this.leadingColor,
  });
  final String title;
  final num value;
  final Color leadingColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.zero,
      title: Text(
        'Design service',
        style: AppStyless.styleReguler16(context).copyWith(
          color: const Color(0xff064061),
        ),
      ),
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(color: leadingColor, shape: BoxShape.circle),
      ),
      trailing: Text(
        '$value%',
        style: AppStyless.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
