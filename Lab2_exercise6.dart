void executeArea(String shapeName, double a, double b, double Function(double, double) formula) {
  var result = formula(a, b);
  print('Places $shapeName: $result');
}

void executeVolume(String shapeName, double a, double b, double c, double Function(double, double, double) formula) {
  var result = formula(a, b, c);
  print('Volumes $shapeName: $result');
}

double rectangleArea(double width, double length) {
  return width * length;
}

double rectangularPrismVolume(double width, double length, double height) {
  return width * length * height;
}

double triangleArea(double base, double height) {
  return 0.5 * base * height;
}

double triangularPrismVolume(double base, double height, double length) {
  return 0.5 * base * height * length;
}

void main() {
  executeArea('Rectangle ', 5, 10, rectangleArea);
  executeVolume('Rectangular Prism ', 5, 10, 3, rectangularPrismVolume);

  // สามเหลี่ยม / ปริซึมสามเหลี่ยม
  executeArea('Triangle ', 6, 4, triangleArea);
  executeVolume('Triangular Prism ', 6, 4, 8, triangularPrismVolume); 

  executeArea('Side Surface of Cylinder ', 7, 10, (r, h) => 2 * 3.14 * r * h);
  executeVolume('Cylinder ', 7, 10, 0, (r, h, _) => 3.14 * r * r * h);
}