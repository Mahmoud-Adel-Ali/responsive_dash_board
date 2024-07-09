import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.item,
});

  final UserInfoModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(item.img),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item. title,
              style: AppStyless.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.subtitle,
              style: AppStyless.styleReguler12(context),
            ),
          ),
        ),
      ),
    );
  }
}
