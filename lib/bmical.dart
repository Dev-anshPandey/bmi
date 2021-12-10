import 'dart:math';

class Cal {
  final height;
  final weight;
  double _res = 0;
  Cal({this.height, this.weight});
  String bmi() {
    _res = weight / pow(height / 100, 2);
    return _res.toStringAsFixed(1);
  }

  String result() {
    if (_res >= 25) {
      return "Overweight";
    } else if (_res >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String reesult() {
    if (_res >= 25) {
      return "You have higher than normal body wieght .Try to excercise  more..";
    } else if (_res > 18.5) {
      return "You have a normal body weight.Good Job !";
    } else {
      return "You have lower than normal body wieght.You can eat a bit more";
    }
  }
}
