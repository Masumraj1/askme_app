import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/bindings/user_binding.dart';
import 'app/core/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   print("=============${MediaQuery.of(context).size.width}");
   print("=============${MediaQuery.of(context).size.height}");
    return ScreenUtilInit(
      designSize: const Size(411, 890),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => GetMaterialApp.router(
        initialBinding: UserBinding(),
        debugShowCheckedModeBanner: false,
        routeInformationParser: AppRouter.route.routeInformationParser,
        routerDelegate: AppRouter.route.routerDelegate,
        routeInformationProvider: AppRouter.route.routeInformationProvider,
      ),
    );
  }
}
