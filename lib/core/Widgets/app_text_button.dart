import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonName;

  const AppTextButton({super.key, this.onPressed, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.center,
        padding: WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(vertical: 14.h, horizontal: 136.w),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(ColorsManager.mainBlue),
        textStyle: WidgetStatePropertyAll<TextStyle>(
          TextStyles.size16w600.copyWith(color: ColorsManager.white),
        ),
        foregroundColor: WidgetStatePropertyAll<Color>(ColorsManager.white),
        fixedSize: WidgetStatePropertyAll<Size>(Size(double.maxFinite, 52.h)),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
      ),
      child: Text(buttonName),
    );
  }
}
