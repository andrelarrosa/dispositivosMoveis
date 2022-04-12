import 'dart:io';

void show() {
  var result = verificarAprovacao();
  print(result);
}

String verificarAprovacao() {
  print("Informe nota 1");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Informe nota 2");
  double nota2 = double.parse(stdin.readLineSync()!);
  double media = (nota1 + nota2) / 2;

  return media >= 6 ? "Aprovado" : "Reprovado";
}
