import 'package:askme/app/view/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:askme/app/view/common_widgets/custom_app_bar/custom_app_bar.dart';
import 'package:askme/app/view/screens/flutter/controller/flutter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlutterScreen extends StatelessWidget {
  final FlutterController controller = Get.find<FlutterController>();

  FlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      //===================Appbar==================
      appBar: CustomAppBar(
        appBarBgColor: Colors.teal,
        isArrow: false,
        appBarContent: "Flutter",
      ),
      bottomNavigationBar: BottomNavBar(),


    );
  }
}
