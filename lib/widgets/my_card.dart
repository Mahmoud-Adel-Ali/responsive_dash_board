import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/custom_card_header.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage(AppImages.imagesCard),
          ),
        ),
        child: Column(
          children: [
            const CustomCardHeader(),
            const Expanded(child: SizedBox()),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '0918 8124 0042 8129',
                style: AppStyless.styleSemiBold24.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '12/20-124',
                style: AppStyless.styleReguler16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
