import 'package:askme/app/core/route_path.dart';
import 'package:askme/app/global/controller/bottom_navbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavbarController controller = Get.put(BottomNavbarController());

    final List<String> _screenPaths = [
      RoutePath.dartScreen,        // Home
      RoutePath.flutterScreen,     // Likes
      RoutePath.stateManagementScreen, // Search
      RoutePath.bonusScreen,       // Profile
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: Obx(() {
          return GNav(
            rippleColor: Colors.cyan[300]!,
            hoverColor: Colors.cyan[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            tabBackgroundColor: Colors.cyan,  // Highlight color when a tab is selected
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            color: Colors.black,
            tabs: const [
              GButton(
                icon: LineIcons.code,
                text: 'Dart',
              ),
              GButton(
                icon: LineIcons.mobilePhone,
                text: 'Flutter',
              ),
              GButton(
                icon: LineIcons.cogs,
                text: 'State',
              ),
              GButton(
                icon: LineIcons.gift,
                text: 'Bonus',
              ),
            ],
            selectedIndex: controller.selectedIndex.value, // Use the controller's reactive index
            onTabChange: (index) {
              controller.changeTab(index);

              context.goNamed(_screenPaths[index]);
            },
          );
        }),
      ),
    );
  }
}
