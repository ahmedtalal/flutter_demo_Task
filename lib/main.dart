import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/presentation/routes/app_pages.dart';
import 'package:flutter_demo_task/app/presentation/routes/app_routes.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreenRoute,
      getPages: AppPages.pages,
    );
  }
}
