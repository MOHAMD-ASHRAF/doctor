import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/feature/home/ui/home_screen.dart';
import 'package:doctor/feature/login/logic/login_cubit.dart';

import 'package:doctor/feature/login/ui/login_screen.dart';
import 'package:doctor/feature/onboarding/onboarding_screen.dart';
import 'package:doctor/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:doctor/feature/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final    arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen()),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
