void printRolls(String name, Map<String, dynamic> dado) {
  print('$name - Dado 1 - Roll: ${dado['dado1']}');
  print('$name - Dado 2 - Roll: ${dado['dado2']}');
  print('$name - Dado 3 - Roll: ${dado['dado3']}');
  print('$name - Soma do roll: ${dado['result']}');
  print('\n');
}
