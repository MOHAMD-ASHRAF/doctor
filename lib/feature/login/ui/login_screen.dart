import 'package:doctor/core/theming/style.dart';
import 'package:doctor/feature/login/ui/widgets/already_have_Account_Text.dart';
import 'package:doctor/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.  ',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormFeild(
                          hintText: 'Email',
                        ),
                        verticalSpace(18),
                        AppTextFormFeild(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('Forget Password',
                              style: TextStyles.font13BlueRegular),
                        ),
                        verticalSpace(40),
                        AppTextButton(
                          buttonText: 'login',
                          onPressed: () {},
                          textStyle: TextStyles.font16BWhiteBold,
                        ),
                        verticalSpace(16),
                        TermsAndConditionsText(),
                        verticalSpace(60),
                        AlreadyHaveAccountText(),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
