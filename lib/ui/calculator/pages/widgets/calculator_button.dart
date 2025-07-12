import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;

  const CalculatorButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
        ),
      ),
    );
  }
}
