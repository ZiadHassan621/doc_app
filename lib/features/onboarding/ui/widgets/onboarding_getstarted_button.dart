import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingGetstartedButton extends StatelessWidget {
  const OnboardingGetstartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.w,
      height: 52.h,
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Text(
          "Get Started",
          style: TextStyles.size16w600.copyWith(color: ColorsManager.white),
        ),
      ),
    );
  }
}
