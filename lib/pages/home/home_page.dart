import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:youtube_download/pages/home/home.dart';

import '../../constant/my_theme.dart';
import '../../controller/dashboard_provider.dart';
import 'favorite/favorite.dart';
import 'setting.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [Home(), FavoritePage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardProvider>(
      builder: (controller) {
        return Scaffold(
            backgroundColor: MyColor.backgroundDark,
            appBar: AppBar(
              backgroundColor: MyColor.backgroundDark,
              title: const Text(
                'loader',
                style: TextStyle(color: MyColor.white),
              ),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Get.to(() => const SearchPage(),
                        transition: Transition.downToUp);
                  },
                  icon: const Icon(Icons.search, color: MyColor.white)),
            ),
            bottomNavigationBar: GNav(
              backgroundColor: const Color(0xFF32324A),
              rippleColor: MyColor.colortext,
              activeColor: MyColor.mainColor,
              textStyle: const TextStyle(color: MyColor.white),
              color: MyColor.white,
              tabs: [
                GButton(
                  icon: Ionicons.home,
                  text: 'Home'.tr,
                ),
                GButton(
                  icon: Ionicons.cloud_download,
                  text: 'Downloads'.tr,
                ),
                GButton(
                  icon: Ionicons.settings,
                  text: "Settings".tr,
                ),
              ],
              selectedIndex: controller.selectedItemPosition,
              onTabChange: (index) {
                controller.changeSelectedItemPosition(index);
              },
            ),
            body: pages[controller.selectedItemPosition]);
      },
    );
  }
}
