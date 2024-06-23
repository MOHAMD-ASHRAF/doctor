import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:doctor/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
