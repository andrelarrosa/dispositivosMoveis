import 'dart:io';

void show() {
  print("Funções sem retorno e sem parâmetro");
  verificarAprovacao();
  verificarSalario();
}

// solicita 2 notas, calcula média e informa se é aprovado ou reprovado
void verificarAprovacao() {
  print("Informe a primeira nota:");
  var entrada = stdin.readLineSync();
  double nota1;
  if (entrada != null) {
    nota1 = double.parse(entrada);
  } else {
    nota1 = 0.0;
  }
  print("Informe a segunda nota:");
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? "Aprovado" : "Reprovado");
}
//------------------------------------------------------------------------------

// solicita o salário e o valor do desconto no final informar se o salario está positivo
void verificarSalario() {
  print("Informe o seu salário: ");
  double salario = double.parse(stdin.readLineSync()!);
  print("Informe o desconto: ");
  double desconto = double.parse(stdin.readLineSync()!);
  double salarioFinal = salario - desconto;
  if (salarioFinal > 0) {
    print("salário positivo");
  } else {
    print("salário negativo");
  }
}

// ---------------------- dá para usar no projeto pessoal ----------------------
void calcularImpostoDeRenda() {
  print("Informe sua renda: ");
  double renda = double.parse(stdin.readLineSync()!);
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
