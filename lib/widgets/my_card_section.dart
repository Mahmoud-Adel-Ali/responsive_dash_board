import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card', style: AppStyless.styleSemiBold20),
        const SizedBox(height: 16),
        const MyCardPageView(),
      ],
    );
  }
}
