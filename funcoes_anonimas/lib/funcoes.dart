import 'dart:io';

void show() {
  criarInterfaceDeDecisao();
}

void verificarAprovacao(double nota1, nota2) {
  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? "Aprovado" : "Reprovado");
}

void verificarMaiorNota(double nota1, nota2) {
  if (nota1 > nota2) {
    print("A maior nota é: ${nota1}");
  } else if (nota2 > nota1) {
    print("A maior nota é: ${nota2}");
  }
}

void calcularMedia(double nota1, nota2) {
  double media = (nota1 + nota2) / 2;
  print(media);
}

void criarInterfaceDeDecisao() {
  print(
      "Informe a operação que deseja:\n1- Verificar Aprovacao\n2- Verificar Maior Nota\n3- Calcular Média");
  String decisao = stdin.readLineSync()!;
  print("Informe nota 1");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Informe nota 2");
  double nota2 = double.parse(stdin.readLineSync()!);
  switch (decisao) {
    case "1":
      verificarAprovacao(nota1, nota2);
      break;
    case "2":
      verificarMaiorNota(nota1, nota2);
      break;
    case "3":
      calcularMedia(nota1, nota2);
      break;
  }
}
