import 'package:calculator/ui/calculator/viewmodels/calculator_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorViewmodel>(
      builder: (context, display, child) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  display.displayText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize:
                        (Theme.of(context).textTheme.headlineLarge!.fontSize!) *
                        1.4,
                  ),
                ),
                Text(
                  display.previewText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize:
                        (Theme.of(context).textTheme.headlineSmall!.fontSize!) *
                        1.4,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
