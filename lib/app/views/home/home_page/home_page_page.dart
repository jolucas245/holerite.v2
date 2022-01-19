import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import './home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
    
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                _headerProfile(constraints.maxWidth),
                SizedBox(height: 20,),
                _contentActions(),
              ],
            )
          );
        }
      ),
    );
  }

  Widget _headerProfile(width) {
    return Container(
      width: width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Colors.cyan,
            Colors.blue,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-1, -1),
            color: Colors.black,
            blurRadius: 5
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/socrates.png"),
              radius: Get.width > 440 ? Get.width * 0.1 : 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AutoSizeText(
                  "João Lucas Gonçalves",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900
                  ),
                ),
                // SizedBox(height: 10,),
                Text(
                  "Auxiliar Administrativo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13
                  ),
                ),
                // SizedBox(height: 10,),
                Text(
                  "Editar Perfil", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    decoration: TextDecoration.underline
                  )
                ,)
              ]
            )
          ],
        ),
      ),
    );
  }

  Widget _contentActions(){
    return Container(
      width: Get.width,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: const [
            ListTile(
              leading: const Icon(Icons.picture_as_pdf_rounded, color: Colors.red),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              minLeadingWidth: 10,
              subtitle: Text("Visualize suas folhas de pagamento", style: TextStyle(color: Colors.grey, fontSize: 12)),
              title: const Text("HOLERITES", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13,)),
            )
          ],
        ),
      ),
    );
  }
}