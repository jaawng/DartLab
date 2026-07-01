void executeOperation(
  String name,
  double f,
  double s,
  double Function(double, double) operation,
) {
  var result = operation(f, s);
  print('Result for $name: $result');
}

double cylinder(double r, double h) {
  return (22 / 7 * (r * r)) * h;
}

double triangle(double b, double h) {
  return 1 / 2 * (b * h);
}

double square(double l, double w) {
  return l * w;
}

void main() {
  executeOperation('cylinder', 3, 4, cylinder);
  executeOperation('triangle', 9, 6, triangle);
  executeOperation('square', 4, 4, square);
}
