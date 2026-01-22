import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.semigray,
            ),
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.semiBlack,
            ),
          ),
          TextSpan(
            text: " and ",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.semigray,
            ),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.semiBlack,
            ),
          ),
        ],
      ),
    );
  }
}
