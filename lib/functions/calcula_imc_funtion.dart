import "dart:io";

import "../model/pessoa.dart";

Future<Pessoa> pegaDados() async {
  print("Qual o seu Nome?");
  String nome = stdin.readLineSync()!;
  await Future.delayed(Duration(seconds: 1));
  print(
      "Qual a sua Altura?(Em cm. Ex: 182. Caso queira representar 1 metro e 82cm)");
  double altura = double.parse(stdin.readLineSync()!);
  await Future.delayed(Duration(seconds: 1));
  print("Qual o seu Peso?(Em Kg)");
  double peso = double.parse(stdin.readLineSync()!);
  Pessoa pessoa = Pessoa(nome, altura, peso);
  return pessoa;
}
