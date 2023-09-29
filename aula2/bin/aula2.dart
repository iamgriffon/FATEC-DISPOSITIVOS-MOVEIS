import 'package:aula2/aula2.dart' as aula2;
import 'dart:io';

void main(List<String> arguments) {
  try {
    int soma = arguments
        .map((arg) => int.parse(arg))
        .reduce((value, element) => value + element);
    int multiplicacao = arguments
        .map((arg) => int.parse(arg))
        .reduce((value, element) => value * element);
    print("Soma dos numeros: $soma");
    print("Produto dos numeros: $multiplicacao");
  } catch (e) {
    print("Erro: input invalido.");
  }
}
