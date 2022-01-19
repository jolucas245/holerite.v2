import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:holerite_v2/app/views/login/screens/desktop/left_card.dart';
import 'package:holerite_v2/app/views/login/screens/desktop/right_card.dart';

class DesktopLogin extends StatelessWidget {
  const DesktopLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
          ),
          width:Get.width,
          height:Get.height
        ),
        GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Center(
            child: Container(
              width: 850,
              height:490,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1,-1),
                    color: Colors.grey,
                    blurRadius: 5
                  )
                ]
              ),
              child: Row(
                children: const [
                  LeftCard(),
                  RightCard()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}