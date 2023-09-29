import { soma, subtrair, dividir, multiplicar } from "./hello";

type MenuOptions = 'somar' | 'subtrair' | 'dividir' | 'multiplicar';

let a = 0;
let b = 1;
let c = 2;

console.log(soma(a, b));
console.log(subtrair(b, c));
console.log(multiplicar(c, c));
console.log(dividir(b, a));

function menu(operacao: MenuOptions, a: number, b: number) {
  switch (operacao) {
    case 'somar':
      console.log(soma(a, b));
      break;

    case 'subtrair':
      console.log(subtrair(a, b));
      break;

    case 'multiplicar':
      console.log(multiplicar(a, b));
      break;

    case 'dividir':
      console.log(dividir(a, b));
      break;

    default:
      console.log('Operação não reconhecida');
      break;
  }
}

menu('somar', 5, 3);
menu('subtrair', 8, 2);
menu('multiplicar', 4, 6);
menu('dividir', 10, a);
