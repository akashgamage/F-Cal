import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  divi() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Simple Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              "Result : $result",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      add();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text(
                      "+",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {
                      sub();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text(
                      "-",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      mul();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text(
                      "*",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {
                      divi();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text(
                      "/",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
