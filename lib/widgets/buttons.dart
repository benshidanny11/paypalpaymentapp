import 'package:flutter/material.dart';

// creating Stateless Wideget for buttons
class MyButton extends StatelessWidget {

// declaring variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

//Constructor
  MyButton({this.color, this.textColor, this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.all(Radius.circular(15))),

        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
