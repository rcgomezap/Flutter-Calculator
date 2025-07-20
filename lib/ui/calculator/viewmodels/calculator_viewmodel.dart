import 'package:calculator/domain/models/calculator_evaluator.dart';
import 'package:flutter/material.dart';

class CalculatorViewmodel extends ChangeNotifier {
  CalculatorViewmodel(this._evaluator);

  final Set<String> writtableSymbols = {'.', '+', '-', '×', '÷'};

  final CalculatorEvaluator _evaluator;
  String _input = '';
  String _resultPreview = '';

  String get displayText => _input.isEmpty ? '0' : _input;
  String get previewText => _resultPreview;

  void handleButtonPress(String label) {
    if (int.tryParse(label) != null || writtableSymbols.contains(label)) {
      // Check if the button can be parsed into an int
      _add(label);
      _updatePreview();
    } else {
      switch (label) {
        case 'C':
          _clear();
        case '=':
          _movePreviewToInput();
      }
    }
    notifyListeners();
  }

  void _add(String digit) {
    _input += digit;
  }

  void _clear() {
    _input = '';
    _resultPreview = '';
  }

  void _movePreviewToInput() {
    _input = _resultPreview;
    _resultPreview = '';
  }

  void _updatePreview() {
    // Only update the preview if there are operators in the input (writtableSymbols)
    if (_input.isEmpty || !_input.contains(RegExp(r'[+\-×÷]'))) {
      return;
    }

    num? result = _evaluator.evaluate(
      _input.replaceAll('×', '*').replaceAll('÷', '/'),
    );
    if (result != null) {
      _resultPreview = result.toString();
    }
  }
}
