import 'package:flutter/material.dart';

class CalculatorViewmodel extends ChangeNotifier {
  String _input = '';
  // String _result = '';

  String get displayText => _input.isEmpty ? '0' : _input;

  void handleButtonPress(String label) {
    if (int.tryParse(label) != null) {
      // Check if the button can be parsed into an int
      _add(label);
    } else {
      switch (label) {
        case 'C':
          _clear();
      }
    }
    notifyListeners();
  }

  void _add(String digit) {
    _input += digit;
  }

  void _clear() {
    _input = '';
  }
}
