import 'package:p1/dado.dart' as p1;
import 'dart:io';

import 'package:p1/imprimir_rolls.dart';
import 'package:p1/moeda.dart';
import 'package:p1/separator.dart';

void main(List<String> arguments) {
  print('Digite quantas rodadas gostaria de jogar:');
  int? input = int.tryParse(stdin.readLineSync()!);

  var placarUsuario = 0;
  var placarCPU = 0;
  var empates = 0;
  var recursoMoeda = 1;

  if (input != null) {
    for (int i = 0; i < input; i++) {
      Map<String, int> dadoUsuario = p1.dados();
      Map<String, int> dadoCPU = p1.dados();

      int somaCPU = dadoCPU['result']!;
      int somaUsuario = dadoUsuario['result']!;

      print('\nRodada # ${i + 1} \n');
      printRolls('CPU', dadoCPU);
      printRolls('Jogador', dadoUsuario);

      if (somaCPU > somaUsuario) {
        placarCPU++;
        print('Rodada # ${i + 1} - Vitória da CPU \n');
      } else if (somaUsuario > somaCPU) {
        placarUsuario++;
        print('Rodada # ${i + 1} - Vitória do usuário \n');
      } else {
        empates++;
        print('Empate \n');
      }
      separator();

      if (recursoMoeda >= 1) {
        print('Deseja utilizar a moeda mágica? Y - Sim / N - Não');
        String? confirm = stdin.readLineSync();

        if (confirm == 'y') {
          recursoMoeda--;
          placarUsuario = moeda(placarUsuario);
        } else if (confirm == 'n') {
          placarUsuario = placarUsuario;
        } else {
          print('Resposta inválida, tente novamente \n');
        }
      }
    }
  } else {
    print('Entrada inválida, favor selecionar um número.');
  }

  //Vencedor das rodadas
  print(
      'Placar Final: CPU $placarCPU - $placarUsuario Usuário, Empates: $empates');

  if (placarCPU > placarUsuario) {
    print('Vitória da CPU!');
  } else if (placarUsuario > placarCPU) {
    print('Vitória do Usuário');
  } else {
    print('Empate!');
  }
}
