//
// import 'package:ans_music/app/global/common_widgets/custom_text/custom_text.dart';
// import 'package:ans_music/app/utils/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
//
//
// void permissionPopUp({
//   required BuildContext context,
//   String title = "",
//   Color color = Colors.red,
//   required VoidCallback ontapNo,
//   required VoidCallback ontapYes,
// }) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return Dialog(
//         child: Container(
//           decoration: BoxDecoration(
//             color: AppColors.gray500,
//             borderRadius: BorderRadius.circular(12.r),
//           ),
//           // height: 135.h,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ///<=========================Title========================>
//
//               CustomText(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 text: title,
//                 color: AppColors.whiteColor,
//                 bottom: 20,
//                 top: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ///<===================No Button=====================>
//                   GestureDetector(
//                     onTap: ontapNo,
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 36.h,
//                       width: 120.w,
//                       decoration: BoxDecoration(
//                           color: AppColors.whiteColor,
//                           borderRadius: BorderRadius.circular(8.r),
//                           border: Border.all(
//                               width: 1.w, color: AppColors.gray500)),
//                       child: CustomText(
//                         text: 'No',
//                         color: AppColors.greenColor,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18.h,
//                       ),
//                     ),
//                   ),
//
//                   ///<===================Yes Button=====================>
//                   GestureDetector(
//                     onTap: ontapYes,
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 36.h,
//                       width: 120.w,
//                       decoration: BoxDecoration(
//                         color: color,
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: CustomText(
//                         text: 'Yes',
//                         color: AppColors.whiteColor,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 18.h,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 25.h,)
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }