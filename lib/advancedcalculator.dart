import 'package:flutter/material.dart';

class AdvancedCalculator extends StatefulWidget {
  const AdvancedCalculator({super.key});

  @override
  State<AdvancedCalculator> createState() => _AdvancedCalculatorState();
}

class _AdvancedCalculatorState extends State<AdvancedCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(color: const Color.fromARGB(255, 0, 0, 0))),

          //buttons
          Row(
            children: [
              button(
                  text: "mc", btnColor: const Color.fromARGB(255, 25, 25, 25)),
              button(
                  text: "m+", btnColor: const Color.fromARGB(255, 25, 25, 25)),
              button(
                  text: "m-", btnColor: const Color.fromARGB(255, 25, 25, 25)),
              button(
                  text: "mr", btnColor: const Color.fromARGB(255, 25, 25, 25))
            ],
          ),
          Row(
            children: [
              button(
                  text: "AC",
                  btnColor: const Color.fromARGB(255, 25, 25, 25),
                  tColor: Colors.red),
              button(
                  text: "<-",
                  btnColor: const Color.fromARGB(255, 25, 25, 25),
                  tColor: Colors.green),
              button(
                  text: "+/-", btnColor: const Color.fromARGB(255, 25, 25, 25)),
              button(text: "", btnColor: const Color.fromARGB(255, 25, 25, 25))
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
            onPressed: () {},
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
