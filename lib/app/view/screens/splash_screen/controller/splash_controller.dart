

import 'package:askme/app/core/route_path.dart';
import 'package:askme/app/core/routes.dart';
import 'package:get/get.dart';


class SplashController extends GetxController{




  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), (){
      AppRouter.route.goNamed(RoutePath.dartScreen);
    });
    super.onReady();
  }

}