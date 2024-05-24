import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:doctor/doc_app.dart';
import 'dart:io';
void main() {
  setupGetIt();

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
