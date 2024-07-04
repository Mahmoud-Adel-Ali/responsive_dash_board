import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import '../utils/app_styless.dart';

class CustomCardHeader extends StatelessWidget {
  const CustomCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 32, right: 42,top: 16),
      title: Text(
        'Name card',
        style:
            AppStyless.styleReguler16.copyWith(color: Colors.white),
      ),
      subtitle: const Text(
        'Syah Bandi',
        style: AppStyless.styleMedium20,
      ),
      trailing: (SvgPicture.asset(AppImages.imagesGallery)),
    );
  }
}
