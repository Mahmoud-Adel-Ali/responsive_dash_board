import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(img: AppImages.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        img: AppImages.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(img: AppImages.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(
        img: AppImages.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(
        img: AppImages.imagesMyInvestments2, title: 'My Investments'),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              activeIndex = index;
              setState(() {});
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
