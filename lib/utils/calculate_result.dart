class CalculateResult {
  final int weight;
  final int height;
  double _bmi = 0;
  String _msg = '';
  String _description = '';

  CalculateResult(this.weight, this.height);

  String calculateResult() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(1);
  }

  String get msg {
    if (_bmi >= 25) {
      _msg = 'Overweight';
    } else if (_bmi > 18.5) {
      _msg = 'Normal';
    } else {
      _msg = 'Underweight';
    }
    return _msg;
  }

  String getDescription() {
    if (_bmi >= 25) {
      _description = 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      _description = 'You have a normal body weight. Good job!';
    } else {
      _description = 'You have a lower than normal body weight. You can eat a bit more.';
    }
    return _description;
  }
}
