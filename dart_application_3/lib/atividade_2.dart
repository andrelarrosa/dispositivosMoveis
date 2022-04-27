import 'dart:io';

void main() {
  validarNumero();
  calculoDataInicial();
}

/*
Exercício 01 - implemente as funções
a) Função que solicite um número e realizar validações: (1) se é par; (2) maior que zero; (3) se é um número primo.
função "hospedeira" : solicitar um número
b) Função que solicite a data inicial e retorne quanto tempo passou em: (1) anos; (2) dias; e (3) horas.
c) Função que solicite a quantidade de dias trabalhadas, valor que recebe por hora e calcule o salarário para: (1) auxiliar; (2) júnior; e (3) pleno.
Exercício 02 - para cada função "hospedeira", faça defina uma função anônima.
*/
int hospedeiraValidar(int numero) {
  return numero;
}

void validarNumero() {
  String result = "";
  print('''
  01 - Validar se é par
  02 - Validar se é maior que zero
  03 - Validar se é número primo
''');
  int acao = hospedeiraValidar(int.parse(stdin.readLineSync()!));
  print("informe o número:");
  double numero = double.parse(stdin.readLineSync()!);
  switch (acao) {
    case 1:
      result = (numero % 2 == 0) ? "par" : "impar";
      break;
    case 2:
      result = (numero > 0) ? "Maior que 0" : "Menor que 0";
      break;
    case 3:
      int counter = 0;
      for (int i = 2; i <= numero; i++) {
        if (numero % i == 0) {
          counter++;
        }
      }
      result = (counter == 1) ? "Primo" : "Não é primo";
      break;
  }
  print(result);
}

int hospedeiraData(int numero) {
  return numero;
}

void calculoDataInicial() {
  print('''
01 - Retornar em anos
02 - Retornar em dias
03 - Retornar em horas
''');
  int acao = hospedeiraData(int.parse(stdin.readLineSync()!));
  print("informe a data:");
  DateTime date = DateTime.parse(stdin.readLineSync()!);
  switch (acao) {
    case 1:
      dynamic a = date.difference(DateTime.now());
      print(a);
      break;
  }
}
