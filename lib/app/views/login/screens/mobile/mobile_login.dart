import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:holerite_v2/app/routes/app_routes.dart';
import 'package:holerite_v2/app/utils/widgets/button_app.dart';

import 'header_login.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.lightBlue.shade300
          ],
          begin: Alignment.topCenter,
          end: Alignment.center
        )
      ),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll){
          overscroll.disallowGlow();
          return true;
        },
        child: Column(
          children: [
            const HeaderLogin(),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(-1, 1),
                      blurRadius: 10.0,
                      color: Colors.grey.shade800
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  ),
                ),
                padding: const EdgeInsets.only(top: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textLogin(),
                      _textFieldEmail(),
                      _textFieldPassword(),
                      _buttonLogin(),
                    ]
                  ),
                ),
              )
            )
          ],
        ),
      )
    );
  }

  Widget _textLogin(){
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: AutoSizeText(
        "Entrar",
        minFontSize: 1,
        maxFontSize: 30,
        style: TextStyle(
          color: const Color(0xff231f20),
          fontSize: Get.width * 0.07,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue) 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue) 
          ),
          hintText: "E-mail",
          suffixIcon: const Icon(Icons.email),
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue) 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue) 
          ),
          hintText: "Senha",
          suffixIcon: const Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: ButtonApp(
        //color: Colors.grey.shade800,
        color: Colors.cyan,
        textColor: Colors.white, 
        icon: Icons.arrow_forward_ios,
        onPressed: (){
          Get.toNamed(AppRoutes.HOME);
        },
        displayWidget: const Text("Entrar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      )
    );
  }
}