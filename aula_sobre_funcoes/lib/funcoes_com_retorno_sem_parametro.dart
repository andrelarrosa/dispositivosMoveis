import 'dart:io';

void show() {
  var result = verificarAprovacao();
  print(result);
  var result2 = verificarSalario();
  print(result2);
}

String verificarAprovacao() {
  print("Informe nota 1");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Informe nota 2");
  double nota2 = double.parse(stdin.readLineSync()!);
  double media = (nota1 + nota2) / 2;

  return media >= 6 ? "Aprovado" : "Reprovado";
}

// solicita o salário e o valor do desconto no final informar se o salario está positivo
String verificarSalario() {
  print("Informe o seu salário: ");
  double salario = double.parse(stdin.readLineSync()!);
  print("Informe o desconto: ");
  double desconto = double.parse(stdin.readLineSync()!);
  double salarioFinal = salario - desconto;
  return salarioFinal > 0 ? "salário positivo" : "salário negativo";
}

double calcularImpostoDeRenda() {
  print("Informe sua renda: ");
  double renda = double.parse(stdin.readLineSync()!);
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
