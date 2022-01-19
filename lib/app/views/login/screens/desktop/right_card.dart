import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/route_manager.dart';
import 'package:holerite_v2/app/routes/app_routes.dart';
import 'package:holerite_v2/app/utils/widgets/button_app.dart';
import 'package:url_launcher/url_launcher.dart';

class RightCard extends StatelessWidget {
  const RightCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _textLogin(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
          ],
        ),
      ),
    );
  }

  Widget _textLogin(){
    return Text(
      "Entrar",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w900,
        color: Colors.grey.shade900
      )
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
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
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