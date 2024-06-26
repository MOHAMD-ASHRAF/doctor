
import 'package:doctor/core/helpers/extesions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: 'Don\'t have an account',
              style: TextStyles.font13DarkBlueRegular
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
