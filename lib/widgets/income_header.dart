import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Income',
          style: AppStyless.styleSemiBold20,
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color(0xffF1F1F1),
          ),
          child:  Row(
            children: [
              Text(
                'Monthly',
                style: AppStyless.styleMedium16,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff064061),
                size: 35,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
