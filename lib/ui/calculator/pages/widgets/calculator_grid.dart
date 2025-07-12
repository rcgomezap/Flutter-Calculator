import 'package:calculator/ui/calculator/pages/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorGrid extends StatelessWidget {
  const CalculatorGrid({super.key});

  static final List<String> buttons = [
    'C',
    '()',
    '%',
    '÷',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '±',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: List.generate(buttons.length, (index) {
        return CalculatorButton(label: buttons[index]);
      }),
    );
  }
}
