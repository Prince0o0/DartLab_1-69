class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('Value below absolute zero (-273.15) is not allowed');
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature(25);

  print('StartTemp: ${temp.celsius} °C');
  print('To Fahrenheit: ${temp.fahrenheit} °F');

  temp.celsius = 30;
  print('\nSet new: ${temp.celsius} °C');
  print('To Fahrenheit: ${temp.fahrenheit} °F');

  print('\nTrying to set a value below absolute zero:');
  temp.celsius = -300;
  print('The value remains: ${temp.celsius} °C (unchanged)');
}