import 'package:doc_app/core/Helpers/spacing.dart';
import 'package:doc_app/core/Theming/colors.dart';
import 'package:doc_app/core/Theming/textstyles.dart';
import 'package:doc_app/core/Widgets/app_text_button.dart';
import 'package:doc_app/core/Widgets/app_text_form_field.dart';
import 'package:doc_app/features/login/ui/widgets/already_have_an_account_yet.dart';
import 'package:doc_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.size24w700.copyWith(
                    color: ColorsManager.mainBlue,
                  ),
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.size14w400.copyWith(
                    color: ColorsManager.gray,
                  ),
                ),
                verticalSpace(36),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      verticalSpace(16),
                      AppTextFormField(
                        hintText: "Password",
                        obscureText: isObscure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          child: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(25),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.size12w400.copyWith(
                            color: ColorsManager.mainBlue,
                          ),
                        ),
                      ),
                      verticalSpace(32),
                      AppTextButton(buttonName: "Login"),
                      verticalSpace(46),
                      const TermsAndConditions(),
                      verticalSpace(20),
                      const AlreadyHaveAnAccountYet(),
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
