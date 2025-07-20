import 'package:math_expressions/math_expressions.dart';

class CalculatorEvaluator {
  final ExpressionParser _p = GrammarParser();
  final RealEvaluator _evaluator = RealEvaluator();

  String? evaluate(String exprString) {
    try {
      Expression expression = _p.parse(exprString);
      return _evaluator.evaluate(expression).toString();
    } on FormatException {
      return null;
    }
  }
}
