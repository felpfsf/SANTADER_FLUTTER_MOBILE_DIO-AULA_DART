import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${dart_app.calculate()}!');

  /**
   * Operadores lógicos
   * 
   * == igual
   * != diferente
   * > e < maior e menor que
   * && "AND"
   * || "OR"
   * 
   * Condicionais
   * 
   * if
   * else
   * else if
   * ternary condition ? "do stuff" : "do other stuff"
   * switch case
   * 
   * e Laços
   * 
   * for
   * foreach
   * while
   * do while
   * 
   */

  // Exercício 1 - Boletim

  // var grade1 = 7;
  // var grade2 = 9;
  // var grade3 = 2.5;
  // var grade4 = 3.2;
  // var grade5 = 5;

  // var gradeAvg = (grade1 + grade2 + grade3 + grade4 + grade5) / 5;

  // print(gradeAvg);
  // print("Average => $gradeAvg >= 7");

  // print('Conditions');
  // print(grade1 >= 7 && grade3 >= 4);
  // print(grade1 >= 7 || grade3 >= 4);

  // if (gradeAvg >= 7) {
  //   print("Studen is approved with average score of $gradeAvg");
  // } else if (gradeAvg >= 5) {
  //   print("Student average score is $gradeAvg, need a retake test");
  // } else {
  //   print("Studen is not approved with average score of $gradeAvg");
  // }

  // var result = gradeAvg >= 7
  //     ? "Studen is approved with average score of $gradeAvg"
  //     : gradeAvg >= 5
  //         ? "Student average score is $gradeAvg, need a retake test"
  //         : "Studen is not approved with average score of $gradeAvg";

  // print("Using ternary condition: \n$result");

  // Exercício 2  - Leitura de dados no console

  // print('input your first grade: ');
  // var line = stdin.readLineSync();
  // var grade1 = int.parse(line!);

  // print('input your first grade: ');
  // line = stdin.readLineSync();
  // var grade2 = int.parse(line!);

  // var gradeAvg = (grade1 + grade2) / 2;

  // var message = gradeAvg >= 7
  //     ? "Studen is approved with average score of $gradeAvg"
  //     : gradeAvg >= 5
  //         ? "Student average score is $gradeAvg, need a retake test"
  //         : "Studen is not approved with average score of $gradeAvg";

  // print(message);

  // Exercício 3 - Calculadora

  // print("Calcutron 2000");

  // print("First operand >");
  // var line = stdin.readLineSync();
  // var operand1 = double.tryParse(line!);

  // if (operand1 == null) {
  //   print("Invalid value, please try again");
  //   return;
  // }

  // print("Second operand >");
  // line = stdin.readLineSync();
  // var operand2 = double.tryParse(line!);

  // if (operand2 == null) {
  //   print("Invalid value, please try again");
  //   return;
  // }

  // print("Select an operator (+, -, *, /) >");
  // line = stdin.readLineSync();
  // var operator = line;

  // double result = 0;

  // switch (operator) {
  //   case '+':
  //     result = operand1 + operand2;
  //     break;
  //   case '-':
  //     result = operand1 - operand2;
  //     break;
  //   case '*':
  //     result = operand1 * operand2;
  //     break;
  //   case '/':
  //     operand2 != 0
  //         ? result = operand1 / operand2
  //         : "C'mon! dividing by zero, really?";
  //     break;
  //   default:
  //     print('Invalid operators');
  //     return;
  // }

  // print("Result > ${result.toStringAsFixed(2)}");

  // Exercício 4 - Laço for

  // print('Multiplication table');

  // stdout.write('Choose an index for multiplication > ');
  // var operand = stdin.readLineSync();

  // print(operand);

  // if (operand != null) {
  //   try {
  //     var parsedOperand = int.parse(operand);
  //     for (int i = 0; i <= 10; i++) {
  //       var result = parsedOperand * i;
  //       print("$parsedOperand x $i = $result");
  //     }
  //   } catch (e) {
  //     print("Invalid number, please type an integer");
  //     return;
  //   }
  // } else {
  //   print("Input in null");
  // }

  // Exercício 5 - for each - for in

  // List<String> products = [
  //   "iPhone 13",
  //   "Samsung Galaxy S21",
  //   "MacBook Pro",
  //   "Sony PlayStation 5",
  //   "Bose QuietComfort 35 II",
  // ];

  // List<int> numbers = [0, 1, 2, 3, 4, 5, 6];

  // List<String> words = ["A", "B", "C", "D", "E"];

  // List<double> grades = [7, 8.5, 6.5, 7.5, 9];

  // for (var product in products) {
  //   print("> $product");
  // }

  // var acc = 0;
  // for (var number in numbers) {
  //   acc = acc + number;
  // }

  // print(acc);

  // words.forEach((element) {
  //   print(element);
  // });

  // print(products.map((e) => e));

  // var totalGrade = grades.reduce((value, element) {
  //   print("value > $value element > $element result=${value + element}");
  //   var result = value + element;
  //   return result;
  // });

  // print("$totalGrade / ${grades.length} = ${totalGrade / grades.length}");

  // Exercício 6 - While

  print("Calcutron 2000");

  while (true) {
    print("Type your operand or type 'exit' to leave the program");
    print("First operand >");
    var line = stdin.readLineSync();
    if (line?.toLowerCase() == 'exit') {
      break;
    }
    var operand1 = double.tryParse(line!);

    if (operand1 == null) {
      print("Invalid value, please try again");
      continue;
    }

    print("Second operand >");
    line = stdin.readLineSync();
    if (line?.toLowerCase() == 'exit') {
      break;
    }
    var operand2 = double.tryParse(line!);

    if (operand2 == null) {
      print("Invalid value, please try again");
      continue;
    }

    print("Select an operator (+, -, *, /) >");
    line = stdin.readLineSync();
    if (line?.toLowerCase() == 'exit') {
      break;
    }
    var operator = line;

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
        return;
    }

    print("Result > ${result.toStringAsFixed(2)}");
  }
}
