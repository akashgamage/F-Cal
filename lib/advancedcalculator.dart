import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class AdvancedCalculator extends StatefulWidget {
  const AdvancedCalculator({super.key});

  @override
  State<AdvancedCalculator> createState() => _AdvancedCalculatorState();
}

class _AdvancedCalculatorState extends State<AdvancedCalculator> {
  //variables
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = '';
  var output = '';
  var operation = '';

  onButtonClick(value) {
    if (value == '<') {
      Navigator.pop(context);
    } else if (value == 'AC') {
      input = '';
      output = '';
    } else if (value == '<-') {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == '=') {
      if (input.isNotEmpty) {
        var userInput = input;
        userInput = input.replaceAll('X', '*');
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith('.0')) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
      }
    } else {
      input = input + value;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // input and output
          Expanded(
              child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  input,
                  style: const TextStyle(fontSize: 48, color: Colors.white),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  output,
                  style: const TextStyle(
                      fontSize: 32, color: Color.fromARGB(130, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 32,
                )
              ],
            ),
          )),

          //buttons
          // Row(
          //   children: [
          //     button(
          //         text: "mc", btnColor: const Color.fromARGB(255, 25, 25, 25)),
          //     button(
          //         text: "m+", btnColor: const Color.fromARGB(255, 25, 25, 25)),
          //     button(
          //         text: "m-", btnColor: const Color.fromARGB(255, 25, 25, 25)),
          //     button(
          //         text: "mr", btnColor: const Color.fromARGB(255, 25, 25, 25))
          //   ],
          // ),
          Row(
            children: [
              button(
                  text: "<",
                  btnColor: const Color.fromARGB(255, 25, 25, 25),
                  tColor: Colors.red),
              button(
                  text: "AC",
                  btnColor: const Color.fromARGB(255, 25, 25, 25),
                  tColor: Colors.green),
              button(
                  text: "<-",
                  btnColor: const Color.fromARGB(255, 25, 25, 25),
                  tColor: Colors.green),
              button(text: "/", btnColor: const Color.fromARGB(255, 25, 25, 25))
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(text: "X", btnColor: const Color.fromARGB(255, 25, 25, 25))
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "-", btnColor: const Color.fromARGB(255, 25, 25, 25))
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "+", btnColor: const Color.fromARGB(255, 25, 25, 25))
            ],
          ),
          Row(
            children: [
              button(text: "%"),
              button(text: "0"),
              button(text: "."),
              button(text: "=", btnColor: Colors.blue)
            ],
          ),
          const SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }

  Widget button(
      {text,
      tColor = Colors.white,
      btnColor = const Color.fromARGB(255, 15, 15, 15)}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(32),
                primary: btnColor),
            onPressed: () => onButtonClick(text),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: tColor,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
