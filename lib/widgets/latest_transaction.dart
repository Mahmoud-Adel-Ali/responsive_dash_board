import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          width: double.infinity,
          child: Text(
            'Latest Transaction',
            style: AppStyless.styleMedium16(context),
          ),
        ),
        SizedBox(
          height: 80,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map(
                (e) {
                  return IntrinsicWidth(
                      child: UserInfoListTile(item: e));
                },
              ).toList(),
            ),
          ),
        )
      ],
    );
  }

  final List<UserInfoModel> items = [
    UserInfoModel(
        img: AppImages.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        img: AppImages.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        img: AppImages.imagesAvatar3,
        title: 'Lekan Okeowo',
        subtitle: 'demo@gmail.com'),
  ];
}
