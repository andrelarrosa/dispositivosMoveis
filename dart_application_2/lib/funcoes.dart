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
  String resultado = '';
  if (opcao == 1) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      double media = (nota1 + nota1) / 2;
      if (media >= 6) {
        return "Aprovado";
      } else {
        return "Reprovad0";
      }
    });
  } else if (opcao == 2) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      return "A média é ${(nota1 + nota2) / 2}";
    });
  } else if (opcao == 3) {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      if (nota1 > nota2) {
        return "A nota mais alta é: ${nota1}";
      } else {
        return "A nota mais alta é: ${nota2}";
      }
    });
  } else {
    resultado = interface(nota1, nota2, (double nota1, double nota2) {
      return "opção inválida";
    });
  }
  print(resultado);
}

String interface(double nota1, double nota2, Function funcao) {
  return funcao(nota1, nota2);
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
