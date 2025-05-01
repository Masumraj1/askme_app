import 'package:askme/app/utils/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTapAction;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final int? maxLines;
  final TextAlign textAlign;

  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTapAction,
    this.firstTextStyle,
    this.secondTextStyle,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: textAlign,
        maxLines: maxLines,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: firstText,
              style: firstTextStyle ??
                  const TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
            ),
            TextSpan(
              text: secondText,
              style: secondTextStyle ??
                  const TextStyle(
                    color: AppColors.greenColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
              recognizer: TapGestureRecognizer()..onTap = onTapAction,
            ),
          ],
        ),
      ),
    );
  }
}
