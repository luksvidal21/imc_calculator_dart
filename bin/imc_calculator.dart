import 'package:imc_calculator/functions/calcula_imc_funtion.dart';

void main() async {
  print(
      "\n\nOlá! Vamos calcular seu IMC.\nNecessitamos que você responda as informações que aparecerão na tela:");
  await Future.delayed(Duration(seconds: 1));
  try {
    var dados = await pegaDados();
    print("${dados.nome}, seu IMC é ${dados.calculaIMC()}");
  } catch (e) {
    print(e);
  }

  print("Obrigado por ter participado!");
}
