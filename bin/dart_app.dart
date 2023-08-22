import 'package:dart_app/dart_app.dart' as dart_app;

void main(List<String> arguments) {
  print('Hello world: ${dart_app.calculate()}!');

    // String text = "text";
  // var text2 = "text2"; // valor dinâmico
  // String text3;

  // int number = 1;
  // double number2 = 1.1;
  // var number3 = 1.2; // valor dinâmico
  // int number4;

  // List<String> list = []; // Esse array está tipado apenas para receber valores do tipo string
  // list.add("abc");
  // // list.add(12) // The argument type 'int' can't be assigned to the parameter type 'String'.
  // var list2 = []; // Esse array tem uma tipagem dinâmica, pode receber valores do tipo string e numbers
  // list2.add('value');
  // list2.add(12);

  // var text = 'DIO';
  // var text2 = 'Trilha de Flutter e Dart na DIO';
  // String text3 = "Dart é o javascript do google";
  // String text4 = "Javascript é a melhor linguagem de programação";
  // String text5 = "NOME CPF ENDERECO";
  // String text6 = " Dart Flutter";

  // String checkPhrase(String text, String phrase) {
  //   if (text2.contains(text)) {
  //     return 'Sim, a palavra "$text" está em "$phrase"';
  //   } else {
  //     return 'Não há nenhum "$text" em "$phrase"';
  //   }
  // }

  // print('A palavra $text está em $text2?');

  // var response = checkPhrase(text, text2);

  // print(response);

  // print(text2.toLowerCase());
  // print(text3.substring(2, 5));
  // print(text.split(" "));

  // print(text4.replaceAll('javascript', 'typescript'));

  // print(text5.split(' '));
  // print(text6.trim());
  // print(text6.trimLeft());
  // print(text6.trimRight());

  // List<String> listString = [];
  // var listInt = [1, 10, 50];
  // List listDynamic = [];

  // print('Tamanho da lista: ');
  // print(listString.length);
  // print(listInt.length);
  // print(listDynamic.length);

  // Map<String, dynamic> mapExample1 = <String, dynamic>{};

  // var mapExample2 = {'zero': 0, 'one': 1, 'two': 2, 'three': 3};

  // print(mapExample1);
  // print(mapExample2);

  // print("Obter pelo valor da chave");
  // print(mapExample2["two"]);
  // print(mapExample2.length);

  // print("Contem chaves");
  // print(mapExample2.containsKey("four"));
  // print(mapExample2.containsKey("zero"));

  // mapExample1.addAll({"Product": "Samsung GalaxyBook 2"});
  // mapExample1.addAll({"Specs": "i5-1235U, 8GB RAM, 256GB"});
  // mapExample1.addAll({"Tela(pol)": 15.6});
  // mapExample1.addAll({"Windows": true});
  // mapExample1.addAll({"Release date": DateTime(2023, 1, 1)});

  // print(mapExample1["Product"]);

  // dynamic dynamicVar1 = 'abc';

  // print(dynamicVar1);
  // dynamicVar1 = 10;
  // print(dynamicVar1);
  // dynamicVar1 = [10, 'abc', true, DateTime(2023)];
  // print(dynamicVar1);

  DateTime dateExample1 = DateTime.now();
  print(dateExample1);

  dateExample1 = DateTime.parse('2023-08-21 16:21:17.613412');
  print(dateExample1);
  
  print(dateExample1.year);
  print(dateExample1.month);
  print(dateExample1.weekday);
  print(dateExample1.day);
  print(dateExample1.hour);
  print(dateExample1.minute);
  print(dateExample1.second);
  print(dateExample1.millisecond);
  print(dateExample1.microsecond);
}
