class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('ค่าที่ป้อนต่ำกว่าศูนย์สัมบูรณ์ (-273.15) ไม่สามารถตั้งค่าได้');
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature(25);

  print('อุณหภูมิเริ่มต้น: ${temp.celsius} °C');
  print('แปลงเป็นฟาเรนไฮต์: ${temp.fahrenheit} °F');

  temp.celsius = 30;
  print('\nตั้งค่าใหม่เป็น: ${temp.celsius} °C');
  print('แปลงเป็นฟาเรนไฮต์: ${temp.fahrenheit} °F');

  print('\nลองตั้งค่าต่ำกว่าศูนย์สัมบูรณ์:');
  temp.celsius = -300;
  print('ค่ายังคงเป็น: ${temp.celsius} °C (ไม่เปลี่ยนแปลง)');
}