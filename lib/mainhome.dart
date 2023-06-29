import 'package:flutter/material.dart';
import 'package:simple_calculator/advancedcalculator.dart';
import 'package:simple_calculator/simplecalculator.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mainhome(),
  ));
}

// ignore: camel_case_types
class mainhome extends StatefulWidget {
  const mainhome({super.key});

  @override
  State<mainhome> createState() => _mainhomeState();
}

// ignore: camel_case_types
class _mainhomeState extends State<mainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Calculators')),
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 88,
                      width: 256,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                          child: const Text(
                            'Simple Calculator',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SimpleCalculator()));
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 88,
                      width: 256,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                          child: const Text(
                            'Advanced Calculator',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AdvancedCalculator()));
                          }),
                    ),
                  ]),
            )));
  }
}

//to be continued
