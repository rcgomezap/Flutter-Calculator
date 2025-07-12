import 'package:flutter/material.dart';

class CalculatorBar extends StatelessWidget {
  const CalculatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Icon(Icons.access_time)),
        ElevatedButton(onPressed: () {}, child: Icon(Icons.straighten)),
        ElevatedButton(onPressed: () {}, child: Icon(Icons.calculate)),
        Expanded(child: Container()),
        ElevatedButton(onPressed: () {}, child: Icon(Icons.backspace)),
      ],
    );
  }
}
