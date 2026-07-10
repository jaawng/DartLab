class Temperature {
  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print(
        'เกิดข้อผิดพลาด: ไม่สามารถกำหนดอุณหภูมิต่ำกว่า -273.15°C (ศูนย์สัมบูรณ์) ได้',
      );
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature();

  temp.celsius = 25;
  print('อุณหภูมิ: ${temp.celsius}°C = ${temp.fahrenheit}°F');

  temp.celsius = -40;
  print('อุณหภูมิ: ${temp.celsius}°C = ${temp.fahrenheit}°F');

  temp.celsius = -300;
  print('อุณหภูมิ: ${temp.celsius}°C = ${temp.fahrenheit}°F');
}
