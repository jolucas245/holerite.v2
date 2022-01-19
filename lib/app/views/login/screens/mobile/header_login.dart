import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:holerite_v2/app/utils/breakpoints.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.only(top: 50, bottom: 20),
          child: Center(
            child: constraints.maxWidth < mobileBreakpoint 
              ? Column(
                children: [
                  Image.asset(
                    "assets/images/alterosa_brasao.png", 
                    width: Get.width * 0.2,
                  ),
                  const SizedBox(height: 10,),
                  AutoSizeText(
                    "Holerite Web", 
                    minFontSize: 1,
                    maxFontSize: 30,
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: Get.width * 0.08, 
                      fontWeight: FontWeight.bold
                    )
                  ),
                  AutoSizeText(
                    "A nova forma de visualizar seu holerite!", 
                    minFontSize: 1,
                    maxFontSize: 26,
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: Get.width * 0.05,
                    )
                  ),
                ],
              )
              : const Text("Holerite Web"),
          ) 
        );
      }
    );
  }
}