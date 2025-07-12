import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10 + 5',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize:
                    (Theme.of(context).textTheme.headlineLarge!.fontSize!) *
                    1.4,
              ),
            ),
            Text(
              '15',
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
  }
}
