import 'package:askme/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SpinKitCircle(
        color: AppColors.whiteColor,
        size: 60.0.sp,
      ),
    );
  }
}