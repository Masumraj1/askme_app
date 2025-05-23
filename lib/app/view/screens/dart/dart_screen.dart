import 'package:askme/app/core/route_path.dart';
import 'package:askme/app/core/routes.dart';
import 'package:askme/app/utils/app_constants.dart';
import 'package:askme/app/view/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:askme/app/view/common_widgets/custom_silver_appbar/custom_silver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/dart_controller.dart';

class DartScreen extends StatelessWidget {
  final DartController homeController = Get.find<DartController>();

  DartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),  // Use BottomNavBar in Scaffold
      body: CustomScrollView(
        slivers: [
          ///==================================✅✅Dart Appbar✅✅=======================
          CustomSliverAppBar(

            title: 'Dart Q&A',
            backgroundImage: AppConstants.dartIcon,
          ),


          ///==================================✅✅Question Here✅✅=======================
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return GestureDetector(
                  onTap: () {
                    final data = {
                      'question': homeController.qnaList[index]['question']!,
                      'answer': homeController.qnaList[index]['answer']!,
                    };
                    AppRouter.route.pushNamed(RoutePath.dartAnswerScreen,extra: data);

                  },

                  child: Card(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        homeController.qnaList[index]['question']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                  ),
                );
              },
              childCount: homeController.qnaList.length,
            ),
          ),
        ],
      ),
    );
  }
}
