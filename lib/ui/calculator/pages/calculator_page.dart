import 'package:calculator/ui/calculator/pages/widgets/calculator_bar.dart';
import 'package:calculator/ui/calculator/pages/widgets/calculator_display.dart';
import 'package:calculator/ui/calculator/pages/widgets/calculator_grid.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.24, child: CalculatorDisplay()),
            SizedBox(height: screenHeight * 0.08, child: CalculatorBar()),
            Divider(),
            Expanded(child: CalculatorGrid()),
          ],
        ),
      ),
    );
  }
}
