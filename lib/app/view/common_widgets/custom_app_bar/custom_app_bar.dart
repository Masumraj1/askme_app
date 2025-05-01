
import 'package:askme/app/utils/app_colors.dart';
import 'package:askme/app/view/common_widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double appBarHeight;
  final double? appBarWidth;
  final Color appBarBgColor;
  final String? appBarContent;
  final IconData? iconData;
  final bool? isArrow;

  const CustomAppBar({
    this.appBarHeight = 64,
    this.appBarWidth,
    this.appBarBgColor = Colors.black,
    this.appBarContent,
    super.key,
    this.iconData, this.isArrow = true,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(appBarWidth ?? double.infinity, appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.appBarBgColor,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            // if (widget.iconData != null)

            widget.isArrow == true?
            GestureDetector(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: AppColors.backButtonColor, shape: BoxShape.circle),
                  child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.greenColor,
                      ))),
              onTap: () {
                Navigator.of(context).pop();
              },
            ):const SizedBox(),
            const Spacer(),
            if (widget.appBarContent != null)
              CustomText(
                text: widget.appBarContent!,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.black,
              ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
