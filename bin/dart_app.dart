// import 'package:dart_app/dart_app.dart' as dart_app;

import 'dart:convert';
import 'dart:io';

void helloDart(String name) {
  print("Hello $name! I'm Dart");
}

bool isInputValid(double? operand) {
  return operand != null;
}

double sum(double operand1, double operand2) {
  return operand1 + operand2;
}

double subtraction(double operand1, double operand2) {
  return operand1 - operand2;
}

double multiplication(double operand1, double operand2) {
  return operand1 * operand2;
}

double division(double operand1, double operand2) {
  if (operand2 == 0) {
    print("C'mon! dividing by zero, really?");
  }
  return operand1 / operand2;
}

double calculate(double operand1, double operand2, String operator) {
  double result = 0;

  switch (operator) {
    case '+':
      // result = operand1 + operand2;
      result = sum(operand1, operand2);
      break;
    case '-':
      // result = operand1 - operand2;
      result = subtraction(operand1, operand2);
      break;
    case '*':
      // result = operand1 * operand2;
      result = multiplication(operand1, operand2);
      break;
    case '/':
      // operand2 != 0
      //     ? result = operand1 / operand2
      //     : print("C'mon! dividing by zero, really?");
      result = division(operand1, operand2);
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

int factorial(int operand) {
  if (operand == 1) {
    return 1;
  }
  return operand * factorial(operand - 1);
}

void printName(String name, {int? age}) {
  if (age == null) {
    return print("Hello $name");
  }
  print("My name is $name and my age is $age");
}

double sumArrowFunction(operand1, operand2) => operand1 + operand2;

void printText(String text) => print(text);

void main(List<String> arguments) {
  // print('Hello world: ${dart_app.calculate()}!');

  // stdout.write("Hello, what's your name? > ");
  // var name = stdin.readLineSync();
  // helloDart(name!);

  // print("Calcutron 2000");

  // while (true) {
  //   print("Type your operand or type 'exit' to leave the program");
  //   var line = getInput("First operand > ");
  //   if (line.toLowerCase() == 'exit') {
  //     break;
  //   }
  //   var operand1 = double.tryParse(line);

  //   if (operand1 == null) {
  //     print("Invalid value, please try again");
  //     continue;
  //   }

  //   line = getInput("Second operand > ");
  //   if (line.toLowerCase() == 'exit') {
  //     break;
  //   }
  //   var operand2 = double.tryParse(line);

  //   if (operand2 == null) {
  //     print("Invalid value, please try again");
  //     continue;
  //   }

  //   line = getInput("Select an operator (+, -, *, /) > ");
  //   if (line.toLowerCase() == 'exit') {
  //     break;
  //   }
  //   var operator = line;

  //   var result = calculate(operand1, operand2, operator!);

  //   print("Result > ${result.toStringAsFixed(2)}");
  // }

  // Exercício 5 - Fatoração

  // print(factorial(5));

  // Exercício 6 - Parâmetros opcionais
  // Para tornar opcional devemos envolver com chaves e adicionar o ?

  // printName('Felipe');
  // printName('Felipe', age: 37);

  // Exercício 7 - Arrow function

  // printText('Arrow function');

  // printText(sumArrowFunction(2.2, 2).toString());

  // Exercício 8 - Funções como parâmetros

  printText(increment(1).toString());
  printText(decrement(2).toString());
  print(execute(6, increment));
  print(execute(3, decrement));
}

double execute(double operand, Function func) => func(operand);

double increment(double operand) => operand + 1;

double decrement(double operand) => operand - 1;
