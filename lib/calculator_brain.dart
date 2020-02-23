import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});
  final int height;
  final int weight;
  double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getBMIResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Sobpeso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Seu peso está acima do normal. Tente se exercitar mais.';
    } else if (_bmi > 18.5) {
      return 'Você está no peso ideal.';
    } else {
      return 'Você tem um peso menor do que o ideal.';
    }
  }
}
