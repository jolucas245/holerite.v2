import 'package:flutter/material.dart';
import 'package:holerite_v2/app/utils/breakpoints.dart';
import 'package:holerite_v2/app/views/login/screens/desktop/desktop_login.dart';
import 'package:holerite_v2/app/views/login/screens/mobile/mobile_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: LayoutBuilder(
        builder: (context, constraints){
          return Scaffold(
            body: constraints.maxWidth < mobileBreakpoint ? const MobileLogin() : const DesktopLogin()
          );
        }
      ),
    );
  }
}