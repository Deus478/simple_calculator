import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display area (could be just a placeholder)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                alignment: Alignment.center,
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 16),
              // Row for calculator buttons (sample buttons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('7'),
                  CalculatorButton('8'),
                  CalculatorButton('9'),
                  CalculatorButton('/'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('4'),
                  CalculatorButton('5'),
                  CalculatorButton('6'),
                  CalculatorButton('*'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('1'),
                  CalculatorButton('2'),
                  CalculatorButton('3'),
                  CalculatorButton('-'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton('0'),
                  CalculatorButton('.'),
                  CalculatorButton('='),
                  CalculatorButton('+'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  CalculatorButton(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(text),
        );
  }
}
