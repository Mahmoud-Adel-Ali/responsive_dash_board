import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.75,
      color: Colors.white,

      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: UserInfoListTile(
                item: UserInfoModel(
                  img: AppImages.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                ),
              ),
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    img: AppImages.imagesSetting2,
                  ),
                  isActive: false,
                ),
                DrawerItem(
                  isActive: false,
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    img: AppImages.imagesLogout,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
