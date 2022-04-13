void show() {
  verificarAprovacao(10, 5);
  verificarSalario(1000, 10);
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

void calcularImpostoDeRenda(double renda) {
  if (renda <= 1903.98) {
    print("Isento");
  } else if (renda > 1903.98 && renda <= 2866.65) {
    double valor = renda * 0.075;
    print(valor);
  } else if (renda > 2866.65 && renda <= 3751.05) {
    double valor = renda * 0.15;
    print(valor);
  } else if (renda > 3751.05 && renda <= 4664.68) {
    double valor = renda * 0.225;
    print(valor);
  } else if (renda > 4664.68) {
    double valor = renda * 0.275;
    print(valor);
  }
}
