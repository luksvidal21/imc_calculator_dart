import 'dart:math';

import 'package:imc_calculator/model/pessoa.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa("Lucas", 100, 1.88);
  double calculoImcPessoa = pessoa.peso / pow(pessoa.altura, 2);
  print(calculoImcPessoa.roundToDouble());
}
