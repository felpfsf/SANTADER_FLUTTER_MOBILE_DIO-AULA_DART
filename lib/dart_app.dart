import 'dart:io';

import 'package:dart_app/exceptions/invalid_name_exception.dart';
import 'package:dart_app/models/student.dart';
import 'package:dart_app/models/utils.dart';

void execute() {
  print('Welcome!');

  String? studentName =
      ConsoleUtils.readUserInput("What's the student's name? > ");
  var student = Student(studentName);

  try {
    if (studentName.trim() == "") {
      throw InvalidNameException();
    }
  } on InvalidNameException {
    studentName = "Besouro";
    print(InvalidNameException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? grade;
  do {
    print(
        "Enter the grade for the student or type 'exit' to leave the programa");
    grade = ConsoleUtils.readDoubleString("Type your first grade > ");

    if (grade != null) {
      student.addGrades(grade);
    }
  } while (grade != null);

  print(student.getGrades());
  print("Student's average grade ${student.getAverageGrade()}");

  if (student.approved(7)) {
    print(
        'Student ${student.getName()} approved with ${student.getAverageGrade()}');
  } else {
    print(
        'Student ${student.getName()} is reproved with ${student.getAverageGrade()}');
  }
}
