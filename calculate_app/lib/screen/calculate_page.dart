import 'package:calculate_app/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  int? firstNum;
  int? secondNum;
  String history = "";
  String texttoDisplay = "";
  String resualt = "";
  String? operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == "C") {
      texttoDisplay = "";
      firstNum = 0;
      secondNum = 0;
      resualt = "";
    } else if (btnVal == "AC") {
      texttoDisplay = "";
      firstNum = 0;
      secondNum = 0;
      resualt = "";
      history = "";
    } else if (btnVal == "+/-") {
      if (texttoDisplay[0] != '-') {
        resualt = "-" + texttoDisplay;
      } else {
        resualt = texttoDisplay.substring(1);
      }
    } else if (btnVal == "DEL") {
      resualt = texttoDisplay.substring(0, texttoDisplay.length - 1);
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "X" ||
        btnVal == "/") {
      firstNum = int.parse(texttoDisplay);
      resualt = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(texttoDisplay);
      if (operation == "+") {
        resualt = (firstNum! + secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "-") {
        resualt = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "X") {
        resualt = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "/") {
        resualt = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      resualt = int.parse(texttoDisplay + btnVal).toString();
    }
    setState(() {
      texttoDisplay = resualt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculate"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey, // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                      fontSize: 24, color: Colors.white.withOpacity(.5)),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  texttoDisplay,
                  style: GoogleFonts.rubik(fontSize: 48, color: Colors.white),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'DEL',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: Colors.black,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: Colors.amber,
                  textColor: Colors.black,
                  textSize: 22,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
