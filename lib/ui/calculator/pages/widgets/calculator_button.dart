import 'package:calculator/ui/calculator/viewmodels/calculator_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  final String label;

  const CalculatorButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<CalculatorViewmodel>(
          context,
          listen: false,
        ).handleButtonPress(label);
      },
      child: Text(
        label,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
        ),
      ),
    );
  }
}
