import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styless.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});
  final String img, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(img),
        title: Text(
          title,
          style: AppStyless.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyless.styleReguler12,
        ),
      ),
    );
  }
}
