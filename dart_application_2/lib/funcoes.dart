import "dart:io";

void show() {
  print('''
          Escolha uma opção:
            01 - verifica a aprovação
            02 - calcula a média
            03 - verifica a maior nota          
 ''');
  int opcao = int.parse(stdin.readLineSync()!);
  print("informe a primeira nota");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("informe a segunda nota");
  double nota2 = double.parse(stdin.readLineSync()!);
  print(interface(opcao, nota1, nota2));
}

String interface(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarAprovacao(nota1, nota2);
  } else if (opcao == 2) {
    return "A média é: ${calcularMedia(nota1, nota2)}";
  } else if (opcao == 3) {
    return "A maior nota é: ${maiorNota(nota1, nota2)}";
  } else {
    return "Opção inválida";
  }
}

String verificarAprovacao(double nota1, double nota2) {
  double media = (nota1 + nota1) / 2;
  if (media >= 6) {
    return "Aprovado";
  } else {
    return "Reprovad0";
  }
}

double calcularMedia(double nota1, double nota2) {
  return (nota1 + nota2) / 2;
}

double maiorNota(double nota1, double nota2) {
  if (nota1 > nota2) {
    return nota1;
  } else {
    return nota2;
  }
}
