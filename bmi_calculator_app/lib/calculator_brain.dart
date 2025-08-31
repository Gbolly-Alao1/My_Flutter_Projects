import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'OBESE';
    } else if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your weight is way above normal! This is dangerous for your health.';
    } else if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try exercising more.';
    } else if (_bmi > 18.5) {
      return 'Great! Your body weight is perfectly normal. ';
    } else {
      return 'Oof! Your weight is below satisfactory levels. Maybe try eating a bit more';
    }
  }
}
