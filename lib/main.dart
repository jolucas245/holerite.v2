import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'app/routes/app_pages.dart';
import 'package:holerite_v2/app/routes/app_pages.dart';
import 'package:holerite_v2/app/routes/app_routes.dart';
import 'configure_nonweb.dart';

void main() {
  configureApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.routes,
    ),
  );
}