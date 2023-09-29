export function soma(a: number, b: number) {
	return a + b;
}

export function subtrair(a: number, b: number) {
	return a - b;
}

export function multiplicar(a: number, b: number) {
	return a * b;
}

export function dividir(a: number, b: number) {
	if (b === 0) {
		throw new Error("Não pode dividir por zero");
	}
	return a / b;
}