class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;
  double bonus;

  FullTimeEmployee(String name, this.monthlySalary, this.bonus) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked)
    : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('สมชาย ใจดี', 25000.0, 2000.0),
    PartTimeEmployee('สมหญิง รักเรียน', 150.0, 120),
    FullTimeEmployee('วิชัย ขยันงาน', 28000.0, 3000.0),
    PartTimeEmployee('มานี มีนา', 120.0, 80),
  ];

  for (var employee in employees) {
    print('Employee: ${employee.name}');
    print('Salary: ${employee.calculateSalary()}');
  }
}
