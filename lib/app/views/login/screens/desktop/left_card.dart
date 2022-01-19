import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftCard extends StatelessWidget {
  const LeftCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
      child: Container(
        width:350,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.cyan.shade200
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => launch("https://www.alterosa.mg.gov.br/"),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Image.asset("assets/images/alterosa_brasao.png", width: 300, height: 200),
              )
            ),
            const Text(
              "Holerite Web",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                shadows: [
                  Shadow(
                    offset: Offset(1,1),
                    blurRadius: 1,
                    color: Colors.black
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}