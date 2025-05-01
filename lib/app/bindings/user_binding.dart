

import 'package:askme/app/global/controller/bottom_navbar_controller.dart';
import 'package:askme/app/view/screens/dart/controller/dart_controller.dart';
import 'package:askme/app/view/screens/flutter/controller/flutter_controller.dart';
import 'package:askme/app/view/screens/splash_screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DartController(), fenix: true);
    Get.lazyPut(() => FlutterController(), fenix: true);
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => BottomNavbarController(), fenix: true);


  }
}