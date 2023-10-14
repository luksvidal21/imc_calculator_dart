import "dart:math";

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  String calculaIMC() {
    double calculoImcPessoa = altura / pow(peso / 100, 2);
    print(calculoImcPessoa);
    String? resultadoFinal;
    if (calculoImcPessoa < 18.5) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nVocê está abaixo do Peso!";
    } else if (calculoImcPessoa >= 18.5 && calculoImcPessoa < 25) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nSeu peso atual é o ideal!";
    } else if (calculoImcPessoa >= 25 && calculoImcPessoa < 30) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de sobrepeso!";
    } else if (calculoImcPessoa >= 30 && calculoImcPessoa < 35) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau I";
    } else if (calculoImcPessoa >= 35 && calculoImcPessoa < 40) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau II";
    } else if (calculoImcPessoa > 40) {
      resultadoFinal =
          "${calculoImcPessoa.toStringAsFixed(2)}.\nSua situação atual é de Obesidade Grau III";
    } else {
      resultadoFinal = "Valores inválidos. Por favor executar novamente.";
    }
    return resultadoFinal;
  }
}
