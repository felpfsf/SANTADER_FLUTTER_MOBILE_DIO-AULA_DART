class Student {
  String _name = "";
  List<double> _grades = [];

  Student(String name) {
    _name = name;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  List<double> getGrades() {
    return _grades;
  }

  void addGrades(double grade) {
    _grades.add(grade);
  }

  double getAverageGrade() {
    var totalGrade = _grades.reduce((value, element) => value + element);
    var average = totalGrade / _grades.length;
    return average.isNaN ? 0 : average;
  }

  bool approved(double minGrade) {
    return getAverageGrade() >= minGrade;
  }
}
