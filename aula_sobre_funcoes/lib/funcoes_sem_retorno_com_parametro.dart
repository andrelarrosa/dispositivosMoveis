void show() {
  verificarAprovacao(10, 5);
}

void verificarAprovacao(double nota1, nota2) {
  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? "Aprovado" : "Reprovado");
}

// solicita o salário e o valor do desconto no final informar se o salario está positivo
void verificarSalario(double salario, desconto) {
  double salarioFinal = salario - desconto;
  print(salarioFinal > 0 ? "salário positivo" : "salário negativo");
}
