class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int workedHours;

  PartTimeEmployee(String name, this.hourlyRate, this.workedHours)
      : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * workedHours;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('Scott', 25000),
    FullTimeEmployee('Brian', 30000),
    PartTimeEmployee('John', 150, 80),
    PartTimeEmployee('Jane', 120, 60),
  ];

  for (Employee emp in employees) {
    print('${emp.name} : Salary ${emp.calculateSalary()} Baht');
  }
}