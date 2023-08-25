import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readUserInput(String text) {
    stdout.write(text);
    return readInput();
  }

  static String readInput() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? readDoubleInput() {
    var value = readInput();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? readDoubleString(String text) {
    stdout.write(text);
    return readDoubleInput();
  }

  static double? readInputWithExitOption(String text, String exitValue) {
    do {
      try {
        var value = readUserInput(text);
        if (exitValue == "exit") {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(text);
      }
    } while (true);
  }
}
