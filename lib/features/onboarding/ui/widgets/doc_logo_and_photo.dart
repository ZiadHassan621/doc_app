import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndPhoto extends StatelessWidget {
  const DocLogoAndPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/Group.png', height: 443.h, width: 443.w),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: [0.1, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset(
            "assets/images/onboarding_doctor.png",
            height: 491.h,
            width: 375.w,
          ),
        ),
        Positioned(
          width: 312.2.w,
          height: 144.h,
          left: 32.w,
          top: 382.h,
          child: Text(
            "Best Doctor\nAppointment App",
            style: TextStyles.size32w700.copyWith(
              color: ColorsManager.mainBlue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
