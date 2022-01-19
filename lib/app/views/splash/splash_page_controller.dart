import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:holerite_v2/app/routes/app_routes.dart';

class SplashPageController extends GetxController{
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(
      Duration(seconds: 4),
      () => Get.offAndToNamed(AppRoutes.LOGIN)
    );
  }
}