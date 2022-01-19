import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:holerite_v2/app/views/splash/splash_page_controller.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GetBuilder<SplashPageController>(
          init: SplashPageController(),
          builder: (controller){
            return Scaffold(
              body: Center(
                child: Lottie.asset(
                  "assets/lotties/document.json",
                  width: constraints.maxWidth * 0.3,
                  height: constraints.maxHeight * 0.3
                )
              ),
            );
          }
        );
      }
    );
  }
}