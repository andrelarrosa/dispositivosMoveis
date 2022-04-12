import 'dart:io';

void show() {
  print("Funções sem retorno e sem parâmetro");
  // verificarAprovacao();
  verificarSalario();
}

// ---------------------- dá para usar no projeto pessoal ----------------------
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
