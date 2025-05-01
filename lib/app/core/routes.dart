import 'package:askme/app/global/helper/extension.dart';
import 'package:askme/app/view/screens/bonus/bonus_screen.dart';
import 'package:askme/app/view/screens/dart/dart_screen.dart';
import 'package:askme/app/view/screens/flutter/flutter_screen.dart';
import 'package:askme/app/view/screens/splash_screen/splash_screen.dart';
import 'package:askme/app/view/screens/state_managment/state_managment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'route_path.dart';

class AppRouter {
  static final GoRouter initRoute = GoRouter(
      initialLocation: RoutePath.splashScreen.addBasePath,
      debugLogDiagnostics: true,
      navigatorKey: GlobalKey<NavigatorState>(),
      routes: [
        ///======================= Initial Route =======================

        GoRoute(
          name: RoutePath.splashScreen,
          path: RoutePath.splashScreen.addBasePath,
          pageBuilder: (context, state) => _buildPageWithAnimation(
            child: SplashScreen(),
            state: state,
          ),
        ),

        ///======================= Main Route =======================

        GoRoute(
          name: RoutePath.dartScreen,
          path: RoutePath.dartScreen.addBasePath,
          pageBuilder: (context, state) => _buildPageWithAnimation(
              child: DartScreen(), state: state, disableAnimation: true),
        ),

        GoRoute(
          name: RoutePath.flutterScreen,
          path: RoutePath.flutterScreen.addBasePath,
          pageBuilder: (context, state) => _buildPageWithAnimation(
              child:  FlutterScreen(),
              state: state,
              disableAnimation: true),
        ),

        GoRoute(
          name: RoutePath.stateManagementScreen,
          path: RoutePath.stateManagementScreen.addBasePath,
          pageBuilder: (context, state) => _buildPageWithAnimation(
              child: const StateManagementScreen(),
              state: state,
              disableAnimation: true),
        ),

        GoRoute(
          name: RoutePath.bonusScreen,
          path: RoutePath.bonusScreen.addBasePath,
          pageBuilder: (context, state) => _buildPageWithAnimation(
              child: const BonusScreen(), state: state, disableAnimation: true),
        ),
      ]);

  static CustomTransitionPage _buildPageWithAnimation(
      {required Widget child,
      required GoRouterState state,
      bool disableAnimation = false}) {
    if (disableAnimation) {
      return CustomTransitionPage(
        key: state.pageKey,
        child: child,
        transitionDuration: Duration.zero, // Disable animation
        transitionsBuilder: (_, __, ___, child) => child, // No transition
      );
    } else {
      return CustomTransitionPage(
        key: state.pageKey,
        child: child,
        transitionDuration: const Duration(milliseconds: 600),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    }
  }

  static GoRouter get route => initRoute;
}

/*
👉 GoRoute হলো বেসিক রাউটিং স্ট্রাকচার, যা নির্দিষ্ট একটি পাথ (path) এবং তার সাথে সংশ্লিষ্ট উইজেট (screen/page) ডিফাইন করতে ব্যবহার করা হয়।
👉 ShellRoute ব্যবহার করা হয় যখন আপনাকে একাধিক স্ক্রিনের মধ্যে একটি কমন UI (যেমন: Bottom Navigation Bar, Drawer) রাখতে হয়।
👉 StatefulShellRoute হল ShellRoute-এর উন্নত সংস্করণ, যেখানে স্টেট সংরক্ষিত থাকে। এটি মূলত BottomNavigationBar বা TabBar ব্যবহারের জন্য পারফেক্ট।
👉 redirect ব্যবহার করা হয় ইউজারকে এক পাথ থেকে অন্য পাথে পাঠানোর জন্য, যেমন Authentication Checking।
👉 name প্যারামিটার ব্যবহার করে নির্দিষ্ট নাম দিয়ে রাউট ডিফাইন করা যায়, যা পরবর্তীতে সহজে নেভিগেশনের জন্য ব্যবহার করা হয়।
👉 কুয়েরি প্যারামিটার পাঠানোর জন্য GoRouterState-এর queryParameters ব্যবহার করা হয়।
👉 একাধিক রাউট নেস্টেডভাবে ব্যবহার করা যায়, যা Parent-Child নেভিগেশনের জন্য দরকারি।
 */
