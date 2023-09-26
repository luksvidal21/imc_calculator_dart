import "dart:io";
import "dart:math";

import "../model/pessoa.dart";

Pessoa pegaDados() {
  print("Qual o seu Nome?");
  String nome = stdin.readLineSync()!;
  print("Qual a sua Altura?");
  double altura = double.parse(stdin.readLineSync()!);
  print("Qual o seu Peso?");
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
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nVocê está abaixo do Peso!";
  } else if (calculoImcPessoa >= 18.5 && calculoImcPessoa < 25) {
    resultadoFinal =
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSeu peso atual é o ideal!";
  } else if (calculoImcPessoa >= 25 && calculoImcPessoa < 30) {
    resultadoFinal =
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de sobrepeso!";
  } else if (calculoImcPessoa >= 30 && calculoImcPessoa < 35) {
    resultadoFinal =
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau I";
  } else if (calculoImcPessoa >= 35 && calculoImcPessoa < 40) {
    resultadoFinal =
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau II";
  } else {
    resultadoFinal =
        "\nSeu IMC é ${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau III";
  }
  return resultadoFinal;
}
