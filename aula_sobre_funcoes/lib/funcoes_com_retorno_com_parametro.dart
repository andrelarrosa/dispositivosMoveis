void show() {
  var result = verificarAprovacao(1, 10);
  print(result);
  var result2 = verificarSalario(1000, 10);
  print(result2);
}

String verificarAprovacao(double nota1, nota2) {
  double media = (nota1 + nota2) / 2;
  return media >= 6 ? "Aprovado" : "Reprovado";
}

String verificarSalario(double salario, desconto) {
  double salarioFinal = salario - desconto;
  return (salarioFinal > 0 ? "salário positivo" : "salário negativo");
}

double calcularImpostoDeRenda(double renda) {
  double valor = 0.0;
  if (renda <= 1903.98) {
    valor = 0;
  } else if (renda > 1903.98 && renda <= 2866.65) {
    valor = renda * 0.075;
  } else if (renda > 2866.65 && renda <= 3751.05) {
    valor = renda * 0.15;
  } else if (renda > 3751.05 && renda <= 4664.68) {
    valor = renda * 0.225;
  } else if (renda > 4664.68) {
    valor = renda * 0.275;
  }
  return valor;
}
