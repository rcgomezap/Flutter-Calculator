import 'package:calculator/domain/models/calculator_evaluator.dart';
import 'package:calculator/ui/calculator/pages/calculator_page.dart';
import 'package:calculator/ui/calculator/viewmodels/calculator_viewmodel.dart';
import 'package:calculator/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => CalculatorEvaluator()),
        ChangeNotifierProvider(
          create: (context) => CalculatorViewmodel(context.read()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const CalculatorPage(),
    );
  }
}
