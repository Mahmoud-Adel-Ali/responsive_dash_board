import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
            width: double.infinity,
            child: Text(
              'My Card',
              style: AppStyless.styleSemiBold20,
            )),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xff4EB7F2),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image:
                    DecorationImage(image: AssetImage(AppImages.imagesCardBG))),
          ),
        ),
      ],
    );
  }
}
