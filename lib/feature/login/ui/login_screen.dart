import 'package:doctor/core/theming/style.dart';
import 'package:doctor/feature/login/logic/login_cubit.dart';
import 'package:doctor/feature/login/ui/widgets/dont_have_account_text.dart';
import 'package:doctor/feature/login/ui/widgets/email_and_password.dart';
import 'package:doctor/feature/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(16),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forget Password',
                          style: TextStyles.font13BlueRegular),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'login',
                      onPressed: () {
                        ValidateThenDoLogin(context);
                      },
                      textStyle: TextStyles.font16BWhiteBold,
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void ValidateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
