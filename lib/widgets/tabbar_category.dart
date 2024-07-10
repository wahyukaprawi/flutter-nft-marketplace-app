import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nft_marketplace_app/constants/color.dart';

class TabbarCategory extends StatelessWidget {
  const TabbarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> listCategory = const [
      Tab(
        text: 'Art',
      ),
      Tab(
        text: 'Sports',
      ),
      Tab(
        text: 'Gaming',
      ),
      Tab(
        text: 'Collectibles',
      ),
      Tab(
        text: 'Film',
      ),
      Tab(
        text: 'Music',
      ),
    ];
    return DefaultTabController(
      length: listCategory.length,
      child: Column(
        children: [
          ButtonsTabBar(
            height: 40,
            radius: 5,
            borderWidth: 2,
            buttonMargin: const EdgeInsets.symmetric(horizontal: 15),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            backgroundColor: tdCyan,
            borderColor: tdCyan.withOpacity(0.1),
            unselectedBackgroundColor: tdWhite,
            unselectedBorderColor: tdBluegrey.withOpacity(0.1),
            tabs: listCategory,
          )
        ],
      ),
    );
  }
}
