import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int firstNum = 0;
  int secondNum = 0;
  int sum = 0;
  int difference = 0;
  int product = 0;
  int quotient = 0;

  final TextEditingController firstNumController = TextEditingController();
  final TextEditingController secondNumController = TextEditingController();

  @override
  void dispose() {
    firstNumController.dispose();
    secondNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CC206 - Unit 5: Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: firstNumController,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        firstNum = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " + ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: secondNumController,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        secondNum = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $sum',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        sum = firstNum + secondNum;
                      });
                    },
                    icon: const Icon(Icons.add)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        firstNumController.clear();
                        secondNumController.clear();
                        sum = 0;
                        firstNum = 0;
                        secondNum = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: firstNumController,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        firstNum = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " - ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: secondNumController,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        secondNum = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $difference',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        difference = firstNum - secondNum;
                      });
                    },
                    icon: const Icon(Icons.remove)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        firstNumController.clear();
                        secondNumController.clear();
                        difference = 0;
                        firstNum = 0;
                        secondNum = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: firstNumController,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        firstNum = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " x ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: secondNumController,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        secondNum = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $product',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        product = firstNum * secondNum;
                      });
                    },
                    icon: const Icon(Icons.close)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        firstNumController.clear();
                        secondNumController.clear();
                        product = 0;
                        firstNum = 0;
                        secondNum = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: firstNumController,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        firstNum = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " ÷ ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: secondNumController,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        secondNum = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $quotient',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (secondNum != 0) {
                          quotient = firstNum ~/ secondNum;
                        } else {
                          print("Error: Division by zero");
                        }
                      });
                    },
                    icon: const FaIcon(FontAwesomeIcons.divide)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        firstNumController.clear();
                        secondNumController.clear();
                        quotient = 0;
                        firstNum = 0;
                        secondNum = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            )
          ],
        ),
      ),
    );
  }
}