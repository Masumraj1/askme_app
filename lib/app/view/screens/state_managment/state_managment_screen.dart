import 'package:askme/app/view/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:askme/app/view/common_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StateManagementScreen extends StatelessWidget {

  const StateManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      //===================Appbar==================
      appBar: CustomAppBar(
        appBarBgColor: Colors.teal,
        isArrow: false,
        appBarContent: "State Management ",
      ),
      bottomNavigationBar: BottomNavBar(), // Use BottomNavBar in Scaffold
    );
  }
}
