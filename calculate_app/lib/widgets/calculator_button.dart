import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;
  final double textSize;
  final Function callback;

  CalculatorButton(
      {required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*.18,
        height: MediaQuery.of(context).size.height*.09,
        child: FloatingActionButton(
          onPressed: () => callback(text),
         // backgroundColor: const Color(0xFF1ac4d0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              color: Colors.black,
              textStyle: TextStyle(fontSize: textSize, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
