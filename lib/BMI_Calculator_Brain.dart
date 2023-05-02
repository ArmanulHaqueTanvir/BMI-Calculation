import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi;

  String Calculate_BMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  //

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  //

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.';
    } else if (_bmi! > 18.5) {
      return 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.';
    } else {
      return 'This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback.';
    }
  }
}
