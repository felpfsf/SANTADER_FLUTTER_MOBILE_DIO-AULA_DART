// import 'package:dart_app/dart_app.dart' as dart_app;

import 'dart:convert';
import 'dart:io';

void helloDart(String name) {
  print("Hello $name! I'm Dart");
}

bool isInputValid(double? operand) {
  return operand != null;
}

double calculate(double operand1, double operand2, String operator) {
  double result = 0;

  switch (operator) {
    case '+':
      result = operand1 + operand2;
      break;
    case '-':
      result = operand1 - operand2;
      break;
    case '*':
      result = operand1 * operand2;
      break;
    case '/':
      operand2 != 0
          ? result = operand1 / operand2
          : print("C'mon! dividing by zero, really?");
      break;
    default:
      print('Invalid operators');
  }

  return result;
}

String getInput(String label) {
  stdout.write(label);
  var line = stdin.readLineSync(encoding: utf8);
  return line!;
}

void main(List<String> arguments) {
  // print('Hello world: ${dart_app.calculate()}!');

  // stdout.write("Hello, what's your name? > ");
  // var name = stdin.readLineSync();
  // helloDart(name!);

  print("Calcutron 2000");

  while (true) {
    print("Type your operand or type 'exit' to leave the program");
    var line = getInput("First operand > ");
    if (line.toLowerCase() == 'exit') {
      break;
    }
    var operand1 = double.tryParse(line);

    if (operand1 == null) {
      print("Invalid value, please try again");
      continue;
    }

    line = getInput("Second operand > ");
    if (line.toLowerCase() == 'exit') {
      break;
    }
    var operand2 = double.tryParse(line);

    if (operand2 == null) {
      print("Invalid value, please try again");
      continue;
    }

    line = getInput("Select an operator (+, -, *, /) > ");
    if (line.toLowerCase() == 'exit') {
      break;
    }
    var operator = line;

    var result = calculate(operand1, operand2, operator!);

    print("Result > ${result.toStringAsFixed(2)}");
  }
}
