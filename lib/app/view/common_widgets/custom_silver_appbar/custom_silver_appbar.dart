import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final String backgroundImage;

  const CustomSliverAppBar({
    super.key,
    required this.title,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      expandedHeight: 200.0.h,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: LayoutBuilder(
          builder: (context, constraints) {
            double appBarHeight = constraints.biggest.height;
            bool isExpanded = appBarHeight > kToolbarHeight + 20;

            return isExpanded
                ? const SizedBox.shrink()
                : Text(
              title,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        background: Image.network(
          backgroundImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
