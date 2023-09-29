import 'dart:math';

dados() {
  int dado1 = Random().nextInt(6) + 1;
  int dado2 = Random().nextInt(6) + 1;
  int dado3 = Random().nextInt(6) + 1;
  int result = dado1 + dado2 + dado3;

  Map<String, int> data = {
    'dado1': dado1,
    'dado2': dado2,
    'dado3': dado3,
    'result': result
  };
  return data;
}
