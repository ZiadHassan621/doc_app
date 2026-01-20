import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:doc_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doc_app/features/onboarding/ui/widgets/doc_logo_and_photo.dart';
import 'package:doc_app/features/onboarding/ui/widgets/onboarding_getstarted_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 40.h),
                DocLogoAndPhoto(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.5.w,
                    vertical: 5.h,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience',
                        style: TextStyles.size12w400.copyWith(
                          color: ColorsManager.gray,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      OnboardingGetstartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
