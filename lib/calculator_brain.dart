import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  CalculatorBrain({required this.height, required this.weight});
  double _bmi = 0.0;
  String calculatebimresult() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1); //single decimal point
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.49) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have ahigher than normal body weight. you  should do an exercise more';
    } else if (_bmi > 18.49) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight .you should eat more';
    }
  }
}
//bim
//body mass index