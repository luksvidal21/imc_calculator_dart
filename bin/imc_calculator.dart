import 'package:imc_calculator/functions/calcula_imc_funtion.dart';

void main() async {
  print(
      "\n\nOlá! Vamos calcular seu IMC.\nNecessitamos que você responda as informações que aparecerão na tela:");
  await Future.delayed(Duration(seconds: 2));
  var dados = await pegaDados();
  var resultado = calculaIMC(dados);
  print(resultado);

  print("\n\nObrigado por ter participado!");
}
