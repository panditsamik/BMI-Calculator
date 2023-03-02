import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  int height;
  int weight;
  double _bmi = 0;

  String getBMI() {
    double heightinm = height / 100;
    num heightsqaure = pow(heightinm, 2);
    _bmi = weight / heightsqaure;
    String result = _bmi.toStringAsFixed(1);
    return result;
  }

  String getResult() {
    if (_bmi >= 30.0) {
      return 'OBESE';
    }
    if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'OVERWEIGHT';
    }
    if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'NORMAL & HEALTHY';
    }
    if(_bmi < 18.5){
      return 'UNDERWEIGHT';
    }
    return "";
  }

  String getinterpretation() {
    if (_bmi >= 30.0) {
      return 'You have an excess than overweight condition. You need to control or check yourself...';
    } else if (_bmi >= 25.0) {
      return 'You have a higher than normal body weight. Try to exercise more...';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more...';
    }
  }
}
