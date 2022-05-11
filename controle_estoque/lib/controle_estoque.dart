import 'dart:io';

void show() {
  print('''Informe o que deseja fazer: 
01- Acrescentar Quantidade em Estoque
''');
  dynamic result;
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      print("informe a quantidade atual do estoque");
      double quantidadeAtual = double.parse(stdin.readLineSync()!);
      print("informe a quantidade comprada");
      double quantidadeAcrescentada = double.parse(stdin.readLineSync()!);
      result = acrescentarQuantidadeEstoque(
          quantidadeAtual: quantidadeAtual,
          quantidadeAcrescentada: quantidadeAcrescentada);
  }
  print(result);
}

double acrescentarQuantidadeEstoque(
    {double quantidadeAtual = 0, double quantidadeAcrescentada = 0}) {
  if (quantidadeAcrescentada <= 0) {
    throw Exception("Quantidade a ser acrescentada tem que ser maior que zero");
  }
  return quantidadeAtual + quantidadeAcrescentada;
}
