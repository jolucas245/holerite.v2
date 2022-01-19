import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp({ Key? key, this.color, required this.textColor, required this.icon, required this.onPressed, required this.displayWidget}) : super(key: key);

  Color? color;
  Color textColor;
  IconData icon;
  Function onPressed;
  Widget displayWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        textStyle: TextStyle(color: textColor)
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: displayWidget,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(icon, color: Colors.black54,),
              ),
            ),
          )
        ],
      ),
    );
  }
}