import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountYet extends StatelessWidget {
  const AlreadyHaveAnAccountYet({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.semiBlack,
            ),
          ),
          TextSpan(
            text: "Sign Up",
            style: TextStyles.size11w400.copyWith(
              color: ColorsManager.mainBlue,
            ),
          ),
        ],
      ),
    );
  }
}
