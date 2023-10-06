import "dart:io";
import "dart:math";

import "../model/pessoa.dart";

Future<Pessoa> pegaDados() async {
  print("Qual o seu Nome?");
  String nome = stdin.readLineSync()!;
  await Future.delayed(Duration(seconds: 1));
  print(
      "Qual a sua Altura?(Em cm. Ex: 182. Caso queira representar 1 metro e 80cm)");
  double altura = double.parse(stdin.readLineSync()!);
  await Future.delayed(Duration(seconds: 1));
  print("Qual o seu Peso?(Em Kg)");
  double peso = double.parse(stdin.readLineSync()!);
  Pessoa pessoa = Pessoa(nome, altura, peso);
  return pessoa;
}

String calculaIMC(Pessoa pessoa) {
  double calculoImcPessoa = pessoa.altura / pow(pessoa.peso, 2);
  print(calculoImcPessoa);
  String? resultadoFinal;
  if (calculoImcPessoa < 18.5) {
    resultadoFinal =
        "\n ${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nVocê está abaixo do Peso!";
  } else if (calculoImcPessoa >= 18.5 && calculoImcPessoa < 25) {
    resultadoFinal =
        "\n${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSeu peso atual é o ideal!";
  } else if (calculoImcPessoa >= 25 && calculoImcPessoa < 30) {
    resultadoFinal =
        "\n${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de sobrepeso!";
  } else if (calculoImcPessoa >= 30 && calculoImcPessoa < 35) {
    resultadoFinal =
        "\n${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau I";
  } else if (calculoImcPessoa >= 35 && calculoImcPessoa < 40) {
    resultadoFinal =
        "\n${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau II";
  } else {
    resultadoFinal =
        "\n${pessoa.nome},seu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau III";
  }
  return resultadoFinal;
}
