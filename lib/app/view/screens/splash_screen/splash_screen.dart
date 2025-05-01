import 'package:askme/app/utils/custom_assets/assets.gen.dart';
import 'package:askme/app/view/common_widgets/custom_loader/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});


  final SplashController controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.image(),
            const CustomLoader()
          ],
        ),

      ),
    );
  }
}
