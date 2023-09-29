import 'dart:math';

import 'package:p1/separator.dart';

int moeda(int score) {
  var result = score;
  int moeda = Random().nextInt(2);

  if (moeda == 1) {
    if (score == 0) {
      print('\nA moeda lhe deu sorte! ganhaste um ponto!');
      result = 1;
    } else {
      print('\nA moeda lhe deu sorte! pontuação dobrada!');
      result = result * 2;
    }
  } else {
    print('\nA moeda lhe deu azar! pontuação cortada pela metade!');
    result = result ~/ 2;
  }
  print('Nova pontuação: ${result}');
  separator();

  return result;
}
