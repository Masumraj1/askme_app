import 'package:askme/app/view/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:askme/app/view/common_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BonusScreen extends StatelessWidget {

  const BonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      //===================Appbar==================
      appBar: CustomAppBar(
        appBarBgColor: Colors.teal,
        isArrow: false,
        appBarContent: "Bonus ",
      ),
      bottomNavigationBar: BottomNavBar(), // Use BottomNavBar in Scaffold
    );
  }
}
