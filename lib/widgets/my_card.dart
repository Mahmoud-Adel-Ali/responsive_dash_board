import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text('My Card',style: AppStyless.styleSemiBold20,)),
      ],
    );
  }
}